import 'package:firebase_auth/firebase_auth.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/model/RegistrationLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/RegistrationLoginTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserFirebaseAuthDataSourceUsingInsertParameterRegistrationLoginAndUpdateParameterRegistrationLogin
    implements
        InsertModelToNamedParameterNamedDataSource<RegistrationLoginTypeParameter>,
        UpdateModelToNamedParameterNamedDataSource<RegistrationLoginTypeParameter>
{
  final FirebaseAuth _firebaseAuth;

  UserFirebaseAuthDataSourceUsingInsertParameterRegistrationLoginAndUpdateParameterRegistrationLogin(this._firebaseAuth);

  @override
  Future<Response> insertModelToNamedParameterNamed(
      RegistrationLoginTypeParameter parameter)
  async {
    RegistrationLogin registrationLogin = parameter.getParameter;
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: registrationLogin.email,
          password: registrationLogin.password);
      return Response.success(true);
    } on FirebaseAuthException catch (e) {
      return Response.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForSignUp(this,e.code));
    } catch (_) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }

  @override
  Future<Response> updateModelToNamedParameterNamed(
      RegistrationLoginTypeParameter parameter)
  async {
    RegistrationLogin registrationLogin = parameter.getParameter;
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: registrationLogin.email,
          password: registrationLogin.password);
      return Response.success(true);
    } on FirebaseAuthException catch (e) {
      return Response.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForLogIn(this,e.code));
    } catch (_) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }
}