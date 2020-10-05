part of 'auth_entity.dart';

@named
@Injectable(as: IAuthRepo)
class AuthCache implements IAuthRepo {
  @override
  Future<Credentials> isSignedIn() {
    // TODO: implement isSignedIn
    throw UnimplementedError();
  }

  @override
  Future<Credentials> phoneSignIn(num phone) {
    // TODO: implement phoneSignIn
    throw UnimplementedError();
  }

  @override
  Future<Credentials> phoneSignUp(num phone) {
    // TODO: implement phoneSignUp
    throw UnimplementedError();
  }

  @override
  Future<void> save(Credentials object) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Credentials> getCredentials() {
    // TODO: implement getCredentials
    throw UnimplementedError();
  }
}
