import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_movie_db_app/Modules/DashboardPage/Presentation/Page/dashboard_page.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Presentation/Pages/login_page.dart';
import 'package:the_movie_db_app/Modules/SwitcherPage/Presentation/BusinessLogic/blocs/CheckTokenAvaility/check_token_availity_bloc.dart';
import 'package:the_movie_db_app/Modules/SwitcherPage/Presentation/Screens/splash_screen.dart';
import 'package:the_movie_db_app/Utils/Router/AppRouter/Routes.dart';

class SwitcherPage extends StatelessWidget {
  const SwitcherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CheckTokenAvailityBloc, CheckTokenAvailityState>(
        builder: (context, state) {
          return BlocListener<CheckTokenAvailityBloc, CheckTokenAvailityState>(
            listener: (context, state) => {
              state.mapOrNull(
                exists: (_) => Navigator.pushReplacementNamed(context, Routes.dashboard),
                doesntExists: (_) => Navigator.pushReplacementNamed(context, Routes.login)
              )
            },
            child: const SplashScreen(),
          );
        },
      ),
    );
  }
}
