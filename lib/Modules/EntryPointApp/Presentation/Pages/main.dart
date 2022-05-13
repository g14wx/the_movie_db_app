import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:the_movie_db_app/Modules/EntryPointApp/Presentation/Screens/main_entry_point_app.dart';
import 'package:the_movie_db_app/Utils/ServiceLocator/service_locator_setup.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  configureDependencies();
  runApp(MainEntryPointApp());
}
