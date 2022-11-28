import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';

class SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException
    extends BaseException
{
  final String code;
  final String message;

  SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
      Object thisClass,
      this.code,
      this.message) : super(thisClass,SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException);

  factory SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForLogIn(
      Object thisClass,
      String code)
  {
    switch(code) {
      case 'invalid-email':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Incorrect password, please try again.',
        );
      default:
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
            "unknown LogIn",
          "An unknown exception occurred."
        );
    }
  }

  factory SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForSignUp(
      Object thisClass,
      String code)
  {
    switch (code) {
      case 'invalid-email':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Email is not valid or badly formatted.',
        );
      case 'user-disabled':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'This user has been disabled. Please contact support for help.',
        );
      case 'email-already-in-use':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'An account already exists for that email.',
        );
      case 'operation-not-allowed':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Operation is not allowed.  Please contact support.',
        );
      case 'weak-password':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Please enter a stronger password.',
        );
      default:
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
            thisClass,
            "unknown signUp",
            "An unknown exception occurred."
        );
    }
  }

  factory SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForGoogle(
      Object thisClass,
      String code)
  {
    switch(code) {
      case 'account-exists-with-different-credential':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Account exists with different credentials.',
        );
      case 'invalid-credential':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'The credential received is malformed or has expired.',
        );
      case 'operation-not-allowed':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Operation is not allowed.  Please contact support.',
        );
      case 'user-disabled':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'This user has been disabled. Please contact support for help.',
        );
      case 'user-not-found':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Email is not found, please create an account.',
        );
      case 'wrong-password':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'Incorrect password, please try again.',
        );
      case 'invalid-verification-code':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'The credential verification code received is invalid.',
        );
      case 'invalid-verification-id':
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
          thisClass,
          code,
          'The credential verification ID received is invalid.',
        );
      default:
        return SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException(
            thisClass,
            "unknown google",
            "An unknown exception occurred."
        );
    }
  }

  @override
  String get getMessageForView {
    return message;
  }

  @override
  String get exceptionInStringForDebugPrintException {
    return "Code: $code | "
        "Message: $message";
  }
}