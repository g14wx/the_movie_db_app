import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:the_movie_db_app/Constants/assets_locations.dart';
import 'package:the_movie_db_app/Modules/LoginPage/BusinessLogic/blocs/Login/login_bloc.dart';
import 'package:the_movie_db_app/Utils/Router/AppRouter/Routes.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();

  final streamInputUsername = TextEditingController();
  final streamInputPassword = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    streamInputUsername.dispose();
    streamInputPassword.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.mapOrNull(error: (authError) {
          final snackBar = SnackBar(
            content: Text(authError.msg),
            action: SnackBarAction(
              label: "Ups!",
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }, loginSuccess: (_) {
          Timer(const Duration(seconds: 1), () {
            Navigator.pushReplacementNamed(context, Routes.dashboard);
          },);
          /*final snackBar = SnackBar(
            content: const Text("yay! login is done!"),
            action: SnackBarAction(
              label: "Yes!",
              onPressed: () {},
            ),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);*/
        }, loading: (_) {
          showDialog(
              context: context,
              builder: (_) =>
                  BlocProvider.value(
                    value: context.read<LoginBloc>(),
                    child: const LoadingPopUp(),
                  ));
        });
      },
      child: Form(
        key: formKey,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 1),
                const Expanded(flex: 2, child: Text("Login")),
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: streamInputUsername,
                    decoration: const InputDecoration(hintText: "Username"),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: streamInputPassword,
                    decoration: const InputDecoration(hintText: "Password"),
                  ),
                ),
                Expanded(
                  child: Center(child: BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        initial: () =>
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent),
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate() &&
                                    streamInputUsername.text.isNotEmpty &&
                                    streamInputPassword.text.isNotEmpty) {
                                  context.read<LoginBloc>().add(
                                      LoginEvent.tryLogin(
                                          username: streamInputUsername.text,
                                          password: streamInputPassword.text));
                                }
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                        loading: () => const CircularProgressIndicator(),
                        orElse: () =>
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStateProperty.all(Colors.blueAccent),
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate() &&
                                    streamInputUsername.text.isNotEmpty &&
                                    streamInputPassword.text.isNotEmpty) {
                                  context.read<LoginBloc>().add(
                                      LoginEvent.tryLogin(
                                          username: streamInputUsername.text,
                                          password: streamInputPassword.text));
                                }
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                      );
                    },
                  )),
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoadingPopUp extends StatelessWidget {
  const LoadingPopUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.mapOrNull(
          error: (_) => Navigator.pop(context),
          loginSuccess: (_) => Navigator.pop(context),
        );
      },
      child: AlertDialog(
        title: const Text("Loading"),
        content: Lottie.asset(AssetsLocations.LOTTIE_LOADING_ANIMATION),
      ),
    );
  }
}
