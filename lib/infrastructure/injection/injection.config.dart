// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../repositories/auth/auth_entity.dart';
import '../../application/authentication/authentication_bloc.dart';
import '../repositories/auth/i_auth_repo.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<IAuthRepo>(() => AuthCache(), instanceName: 'AuthCache');
  gh.factory<IAuthRepo>(
      () => AuthEntity(
          cache: get<IAuthRepo>(instanceName: 'AuthCache'),
          source: get<IAuthRepo>(instanceName: 'AuthSource')),
      instanceName: 'AuthEntity');

  // Eager singletons must be registered in the right order
  gh.singleton<IAuthRepo>(AuthSource(), instanceName: 'AuthSource');
  gh.singleton<AuthenticationBloc>(
      AuthenticationBloc(authRepo: get<IAuthRepo>(instanceName: 'AuthEntity')));
  return get;
}
