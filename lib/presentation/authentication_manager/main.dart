import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_mobile/application/authentication/authentication_bloc.dart';
import 'package:template_mobile/presentation/home/main.dart';
import 'package:template_mobile/presentation/login/main.dart';

class AuthenticationManager extends StatefulWidget {
  static const routeName = '/authentication_manager';

  @override
  _AuthenticationManagerState createState() => _AuthenticationManagerState();
}

class _AuthenticationManagerState extends State<AuthenticationManager> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      cubit: context.bloc<AuthenticationBloc>(),
      builder: (context, state) {
        if (state is NotAuthenticated) {
          return LoginMain();
        } else if (state is Authenticated) {
          return HomeMain();
        }
        return Container(
          child: Center(
            child: Text('Splash screen'),
          ),
        );
      },
    );
  }
}
