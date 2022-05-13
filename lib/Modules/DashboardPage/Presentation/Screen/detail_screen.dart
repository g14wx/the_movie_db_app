import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  late int idMovie;
  DetailScreen({required this.idMovie, Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie id ${widget.idMovie}"),
      ),
      body: Center(
        child: Text("Done"),
      ),
    );
  }
}
