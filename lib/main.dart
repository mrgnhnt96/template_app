import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_mobile/application/authentication/authentication_bloc.dart';
import 'package:template_mobile/application/login/login_bloc.dart';
import 'package:template_mobile/application/simple_bloc_delegate.dart';
import 'package:template_mobile/infrastructure/injection/injection.dart';
import 'package:template_mobile/presentation/authentication_manager/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  configureDependencies();
  Bloc.observer = SimpleBlocDelegate();
  Fimber.plantTree(DebugTree(useColors: false));

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (context) => getIt<AuthenticationBloc>()..add(AppStarted()),
        ),
        BlocProvider<LoginBloc>(
          create: (context) => getIt<LoginBloc>(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'template',
      theme: ThemeData(),
      home: AuthenticationManager(),
      routes: {},
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => AuthenticationManager());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => AuthenticationManager());
      },
    );
  }
}
