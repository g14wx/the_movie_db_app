import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:the_movie_db_app/Constants/assets_locations.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Presentation/Page/search_page.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Presentation/Screen/detail_screen.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/blocs/MovieSuggestions/movie_suggestions_bloc.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/blocs/MoviesBloc/movies_bloc.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/blocs/MoviesSearchBloc/movies_search_bloc.dart';
import 'package:the_movie_db_app/Utils/Envs/TMDB/production_env_TMDB.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';
import 'package:the_movie_db_app/Utils/ServiceLocator/service_locator_setup.dart';

class DashboardPage extends StatefulWidget {
  late IEnvTMDB env;

  DashboardPage({required IEnvTMDB enviroment, Key? key})
      : env = enviroment,
        super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();
    context.read<MoviesBloc>().add(const MoviesEvent.fetchMovies());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDBAPP'),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => BlocProvider(
                        create: (_) => getIt<MoviesSearchBloc>(),
                        child: SearchPage(
                          env: ProductionEnvTMDB(),
                        ),
                      ))),
              icon: const Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<MoviesBloc, MovieState>(
        builder: (context, state) {
          return state.map(
              loadingState: (_) {
                return BlocProvider.value(
                  value: context.read<MoviesBloc>(),
                  child: const LoadingPopUpMovie(),
                );
              },
              errorFetching: (msg) => Center(
                    child: Column(
                      children: [
                        Text(msg.message),
                        ElevatedButton(
                          onPressed: () {
                            context
                                .read<MoviesBloc>()
                                .add(const MoviesEvent.fetchMovies());
                          },
                          child: const Text("Try Again"),
                        )
                      ],
                    ),
                  ),
              loaded: (movies) {
                return GridView.builder(
                  itemCount: movies.movies.length,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GridTile(
                      key: ValueKey(movies.movies[index].id),
                      child: movies.movies[index].poster_path != null
                          ? GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) {
                                          return BlocProvider(
                                            create: (_) =>
                                                getIt<MovieSuggestionsBloc>(),
                                            child: DetailScreen(
                                              movie: movies.movies[index],
                                              env: ProductionEnvTMDB(),
                                            ),
                                          );
                                        },
                                        fullscreenDialog: true));
                              },
                              child: CachedNetworkImage(
                                imageUrl:
                                    "${widget.env.FETCH_POSTER_PATH}${movies.movies[index].poster_path}",
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) {
                                          return BlocProvider(
                                            create: (_) =>
                                                getIt<MoviesSearchBloc>(),
                                            child: DetailScreen(
                                              movie: movies.movies[index],
                                              env: ProductionEnvTMDB(),
                                            ),
                                          );
                                        },
                                        fullscreenDialog: true));
                              },
                              child: Lottie.asset(
                                  AssetsLocations.PLACEHOLDER_IMAGE)),
                      footer: GridTileBar(
                        backgroundColor: Colors.black54,
                        title: Text(
                          movies.movies[index].title,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle:
                            Text(movies.movies[index].vote_average.toString()),
                      ),
                    ); /*Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[100],
                      child: Text(movies.movies[index].title),
                    );*/
                  },
                );
              });
        },
      ),
    );
  }
}

class LoadingPopUpMovie extends StatelessWidget {
  const LoadingPopUpMovie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<MoviesBloc, MovieState>(
      listener: (context, state) {},
      child: AlertDialog(
        title: const Text("Loading"),
        content: Lottie.asset(AssetsLocations.LOTTIE_LOADING_ANIMATION),
      ),
    );
  }
}
