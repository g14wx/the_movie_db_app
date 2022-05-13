import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:the_movie_db_app/Models/Movie/movie.dart';
import 'package:the_movie_db_app/Utils/Envs/protocols/i_env_tmdb.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.movie.title}"),
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
                      const Text("Overview",style: TextStyle(fontWeight: FontWeight.bold)),
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
                      const Text("Vote",style: TextStyle(fontWeight: FontWeight.bold)),
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
                      const Text("Release Date",style: TextStyle(fontWeight: FontWeight.bold)),
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
              )
            ]),
          ),
        ],
      ),
    );
  }
}
