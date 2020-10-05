import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_mobile/application/login/login_bloc.dart';
import 'package:template_mobile/infrastructure/injection/injection.dart';
import 'package:template_mobile/presentation/login/screen.dart';

class LoginMain extends StatelessWidget {
  static const routeName = '/login_main';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>()..add(LoginStarted()),
      child: LoginScreen(),
    );
  }
}
