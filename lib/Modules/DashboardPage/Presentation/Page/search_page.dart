import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:the_movie_db_app/Constants/assets_locations.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Presentation/Screen/detail_screen.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/blocs/MovieSuggestions/movie_suggestions_bloc.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/blocs/MoviesSearchBloc/movies_search_bloc.dart';
import 'package:the_movie_db_app/Utils/Envs/TMDB/production_env_TMDB.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';
import 'package:the_movie_db_app/Utils/ServiceLocator/service_locator_setup.dart';

class SearchPage extends StatelessWidget {
  late IEnvTMDB env;

  final streamSearch = TextEditingController();

  SearchPage({required this.env, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: TextField(
            textInputAction: TextInputAction.search,
            controller: streamSearch,
            onSubmitted: (_) {
              if (streamSearch.text.isNotEmpty) {
                context.read<MoviesSearchBloc>().add(
                    MoviesSearchEvent.searchMovies(
                        query: streamSearch.text, apiKey: env.API_KEY));
              }
            },
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    if (streamSearch.text.isNotEmpty) {
                      context.read<MoviesSearchBloc>().add(
                          MoviesSearchEvent.searchMovies(
                              query: streamSearch.text, apiKey: env.API_KEY));
                    }
                  },
                ),
                prefixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    streamSearch.text = "";
                  },
                ),
                hintText: 'Search...',
                border: InputBorder.none),
          ),
        ),
      )),
      body: BlocBuilder<MoviesSearchBloc, MoviesSearchState>(
          builder: (context, state) {
        return state.map(loadingSearchState: (value) {
          return const LoadingPopUpMovieSearch();
        }, loadedSearchState: (movies) {
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
                                      create: (_) => getIt<MoviesSearchBloc>(),
                                      child: DetailScreen(
                                        movie: movies.movies[index],
                                        env: ProductionEnvTMDB(),
                                      ),
                                    );
                                  },
                                  fullscreenDialog: true));
                        },
                        child: GestureDetector(
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
                                "${env.FETCH_POSTER_PATH}${movies.movies[index].poster_path}",
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) {
                                    return BlocProvider(
                                      create: (_) => getIt<MovieSuggestionsBloc>(),
                                      child: DetailScreen(
                                        movie: movies.movies[index],
                                        env: ProductionEnvTMDB(),
                                      ),
                                    );
                                  },
                                  fullscreenDialog: true));
                        },
                        child: Lottie.asset(AssetsLocations.PLACEHOLDER_IMAGE)),
                footer: GridTileBar(
                  backgroundColor: Colors.black54,
                  title: Text(
                    movies.movies[index].title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(movies.movies[index].vote_average.toString()),
                ),
              ); /*Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.teal[100],
                      child: Text(movies.movies[index].title),
                    );*/
            },
          );
        }, errorSearch: (msg) {
          return Center(
            child: Column(
              children: [
                Text(msg.message),
                ElevatedButton(
                  onPressed: () {
                    if (streamSearch.text.isNotEmpty) {
                      context.read<MoviesSearchBloc>().add(
                          MoviesSearchEvent.searchMovies(
                              query: streamSearch.text, apiKey: env.API_KEY));
                    }
                  },
                  child: const Text("Try Again"),
                )
              ],
            ),
          );
        }, initialState: (_) {
          return Center();
        });
      }),
    );
  }
}

class LoadingPopUpMovieSearch extends StatelessWidget {
  const LoadingPopUpMovieSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<MoviesSearchBloc, MoviesSearchState>(
      listener: (context, state) {},
      child: AlertDialog(
        title: const Text("Loading"),
        content: Lottie.asset(AssetsLocations.LOTTIE_LOADING_ANIMATION),
      ),
    );
  }
}
