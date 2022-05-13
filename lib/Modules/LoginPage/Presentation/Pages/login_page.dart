import 'package:flutter/material.dart';
import 'package:the_movie_db_app/Modules/LoginPage/Presentation/Screen/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            reverse: true,
            child: Container(
              height: MediaQuery.of(context).size.height - 80,
              child: LoginForm()
            ),
          ),
        ),
      ),
    );
  }
}
