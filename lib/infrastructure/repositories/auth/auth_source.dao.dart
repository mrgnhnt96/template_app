part of 'auth_entity.dart';

@named
@Singleton(as: IAuthRepo)
class AuthSource implements IAuthRepo {
  // final FirebaseAuth _auth = FirebaseAuth.instance;

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
  Future<void> signOut() async {
    // await _auth.signOut();
  }

  @override
  // ignore: missing_return
  Future<Credentials> isSignedIn() async {
    try {
      final dynamic user = {} /* _auth.currentUser */;
      if (user == null) {
        return null;
      }
      //refresh session
      await user.getIdToken(true);

      final creds = Credentials(
        email: user.email,
        // userId: _auth.currentUser.uid,
        fullname: user?.displayName,
        firstName: user?.displayName?.split(' ')?.first,
        lastName: user?.displayName?.split(' ')?.last,
      );
      return creds;
    } catch (err) {
      _handleFirebaseErrors(err);
    }
  }

  @override
  Future<Credentials> getCredentials() {
    // TODO: implement getCredentials
    throw UnimplementedError();
  }

  // _____________________________________________ ERROR HANDLERS _____________________________________________
  // __________________________________________________________________________________________________________
  void _handleFirebaseErrors(dynamic error, {String service}) {
    switch (error.code) {
      case "network-request-failed":
        throw NoNetworkException();
        break;
      case "invalid-email":
        // errorMessage = "Your email address appears to be malformed.";
        throw InvalidEmailException();
        break;
      case "wrong-password":
        // errorMessage = "Your password is wrong.";
        throw WrongPasswordException();
        break;
      case "operation-not-allowed":
        // errorMessage = "Signing in with Email and Password is not enabled.";
        // not currently using
        throw NJOFirebaseException();
        break;
      case "user-not-found":
        // errorMessage = "User with this email doesn't exist.";
        throw NoUserFoundException();
        break;
      case "email-already-in-use":
        // errorMessage = "The email address is already in use by another account.";
        throw EmailAlreadyExistsException('The email address is already in use by another account.');
        break;
      case "invalid-credential":
        // errorMessage = "User with this email doesn't exist.";
        throw InvalidCredentialException();
        break;
      case "user-disabled":
        throw DisabledUserException('User with this email has been disabled.');
        break;
      case "too-many-requests":
        throw NJOFirebaseException();
        break;
      case "account-exists-with-different-credential":
        final List<String> otherServicesList = [
          'Google',
          'Facebook',
        ];
        if (Platform.isIOS) {
          otherServicesList.add('Apple');
        }
        otherServicesList.remove(service);
        final String otherServices = otherServicesList.join(' or ');
        throw WrongCredentialException('You tried signing in with $service, you previously signed in with $otherServices. Please try again.');
        break;
      default:
        throw NJOFirebaseException();
    }
  }
}
