import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:the_movie_db_app/Constants/assets_locations.dart';
import 'package:the_movie_db_app/Models/Movie/movie.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/blocs/MovieSuggestions/movie_suggestions_bloc.dart';
import 'package:the_movie_db_app/Utils/Envs/TMDB/production_env_TMDB.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';
import 'package:the_movie_db_app/Utils/Router/AppRouter/Routes.dart';
import 'package:the_movie_db_app/Utils/ServiceLocator/service_locator_setup.dart';

class DetailScreen extends StatefulWidget {
  late Movie movie;
  late IEnvTMDB env;

  DetailScreen({required this.movie, required this.env, Key? key})
      : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();
    context.read<MovieSuggestionsBloc>().add(
        MovieSuggestionsEvent.fetchSuggestions(
            apiKey: widget.env.API_KEY, movieId: widget.movie.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.movie.title}"),
        actions: [
          ElevatedButton.icon(onPressed: (){
            Navigator.of(context).popUntil((route) => route.isFirst);
          }, icon: const Icon(Icons.home), label: const Text("Home"))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            flexibleSpace: Stack(
              children: [
                Positioned.fill(
                    child: CachedNetworkImage(
                  imageUrl:
                      "${widget.env.FETCH_POSTER_PATH}${widget.movie.poster_path}",
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ))
              ],
            ),
            expandedHeight: 30,
            collapsedHeight: 150,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Card(
                margin: const EdgeInsets.all(15),
                child: Container(
                  height: 80,
                  alignment: Alignment.center,
                  child: Text(
                    widget.movie.title,
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(15),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Text("Overview",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.movie.overview,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(15),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Text("Vote",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.movie.vote_average.toString(),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(15),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Text("Release Date",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.movie.release_date ?? "No release date provided",
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(15),
                child: Container(
                  alignment: Alignment.center,
                  child: const Text("Suggestions",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              )
            ]),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100.0,
              child: BlocBuilder<MovieSuggestionsBloc, MovieSuggestionsState>(
                builder: (context, state) {
                  return state.map(
                      loaded: (value) {
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: value.movies.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) {
                                          return BlocProvider(
                                            create: (_) =>
                                                getIt<MovieSuggestionsBloc>(),
                                            child: DetailScreen(
                                              movie: value.movies[index],
                                              env: ProductionEnvTMDB(),
                                            ),
                                          );
                                        },
                                        fullscreenDialog: true));
                              },
                              child: Container(
                                width: 100.0,
                                child: Card(
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                          child: CachedNetworkImage(
                                        imageUrl:
                                            "${widget.env.FETCH_POSTER_PATH}${value.movies[index].poster_path.toString()}",
                                        placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      error: (msg) => Center(
                            child: Column(
                              children: [
                                Text(msg.msg),
                                ElevatedButton(
                                  onPressed: () {
                                    context.read<MovieSuggestionsBloc>().add(
                                        MovieSuggestionsEvent.fetchSuggestions(
                                            apiKey: widget.env.API_KEY,
                                            movieId: widget.movie.id));
                                  },
                                  child: const Text("Try Again"),
                                )
                              ],
                            ),
                          ),
                      loading: (_) => BlocProvider.value(
                          value: context.read<MovieSuggestionsBloc>(),
                          child: const LoadingPopUpMovieSuggestion()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoadingPopUpMovieSuggestion extends StatelessWidget {
  const LoadingPopUpMovieSuggestion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<MovieSuggestionsBloc, MovieSuggestionsState>(
      listener: (context, state) {},
      child: AlertDialog(
        title: const Text("Loading"),
        content: Lottie.asset(AssetsLocations.LOTTIE_LOADING_ANIMATION),
      ),
    );
  }
}
