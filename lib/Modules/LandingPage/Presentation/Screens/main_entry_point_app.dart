import 'package:flutter/material.dart';
import 'package:the_movie_db_app/Utils/Router/AppRouter/AppRouter.dart';

class MainEntryPointApp extends StatelessWidget {
  MainEntryPointApp({Key? key}) : super(key: key);

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (route) =>  appRouter.onGenerateRoute(route),
    );
  }
}
