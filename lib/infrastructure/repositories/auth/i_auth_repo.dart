import 'package:template_mobile/domain/user/credentials.model.dart';

abstract class IAuthRepo {
  Future<void> signOut();

  Future<void> save(Credentials object);

  /// returns credentials received firebase
  Future<Credentials> phoneSignIn(num phone);
  Future<Credentials> phoneSignUp(num phone);
  Future<Credentials> isSignedIn();
  Future<Credentials> getCredentials();
}
