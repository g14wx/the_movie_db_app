import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:the_movie_db_app/Modules/SwitcherPage/Presentation/BusinessLogic/blocs/CheckTokenAvaility/check_token_availity_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset("assets/lottie/splash-screen.json",
          controller: _animationController, onLoaded: (composition) {

        _animationController.addStatusListener((status) {
          if (status == AnimationStatus.completed){
            context.read<CheckTokenAvailityBloc>().add(const CheckTokenAvailityEvent.checkIfTokenExist());
          }
        },);

        _animationController
          ..duration = composition.duration
          ..forward();
      }),
    );
  }
}
