import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_mobile/application/home/home_bloc.dart';
import 'package:template_mobile/infrastructure/injection/injection.dart';
import 'package:template_mobile/presentation/home/screen.dart';

class HomeMain extends StatelessWidget {
  static const routeName = '/home_main';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(HomeStarted()),
      child: HomeScreen(),
    );
  }
}
