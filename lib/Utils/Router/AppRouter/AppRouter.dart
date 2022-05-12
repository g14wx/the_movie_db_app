import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Presentation/Page/dashboard_page.dart';

import 'package:the_movie_db_app/Modules/ErrorPage/Presentation/Pages/error_page.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Presentation/Pages/login_page.dart';
import 'package:the_movie_db_app/Modules/SwitcherPage/Presentation/BusinessLogic/blocs/CheckTokenAvaility/check_token_availity_bloc.dart';
import 'package:the_movie_db_app/Modules/SwitcherPage/Presentation/Page/switcher_page.dart';
import 'package:the_movie_db_app/Utils/Router/AppRouter/Routes.dart';
import 'package:the_movie_db_app/Utils/ServiceLocator/service_locator_setup.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings route){
    switch (route.name) {
      case Routes.root:
        return MaterialPageRoute(builder: (context) => BlocProvider(
            create:(_) => getIt<CheckTokenAvailityBloc>(),
          child: const SwitcherPage(),
        ));
      case Routes.login:
        return MaterialPageRoute(builder: (context) => const LoginPage(),);
      case Routes.dashboard:
        return MaterialPageRoute(builder: (context) => const DashboardPage(),);
      default:
        return MaterialPageRoute(builder: (context) => const ErrorPage(), );
    }
  }
}