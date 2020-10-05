import 'dart:io';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:template_mobile/domain/user/credentials.model.dart';
import 'package:template_mobile/infrastructure/exceptions/auth/firebase_exceptions.dart';
import 'package:template_mobile/infrastructure/exceptions/core_exceptions.dart';
import 'package:template_mobile/infrastructure/repositories/auth/i_auth_repo.dart';

part 'auth_cache.dao.dart';
part 'auth_source.dao.dart';

@named
@Injectable(as: IAuthRepo)
class AuthEntity implements IAuthRepo {
  final IAuthRepo cache;
  final IAuthRepo source;

  AuthEntity({
    @Named.from(AuthCache) @required this.cache,
    @Named.from(AuthSource) @required this.source,
  });

  @override
  Future<void> signOut() async {
    await source.signOut();
    // await cache.signOut();
  }

  @override
  Future<void> save(Credentials object) async {
    await cache.save(object);
    // await source.save(object);
  }

  @override
  Future<Credentials> isSignedIn() async {
    final creds = await source.isSignedIn();
    if (creds != null) save(creds);
    return creds;
  }

  @override
  Future<Credentials> phoneSignIn(num phone) async {
    final creds = await source.phoneSignIn(phone);
    if (creds != null) save(creds);
    return creds;
  }

  @override
  Future<Credentials> phoneSignUp(num phone) async {
    final creds = await source.phoneSignUp(phone);
    if (creds != null) save(creds);
    return creds;
  }

  @override
  Future<Credentials> getCredentials() => cache.getCredentials();
}
