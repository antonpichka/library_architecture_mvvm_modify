import 'package:firebase_auth/firebase_auth.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/Login.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/Registration.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/RegistrationTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/response.dart';

class UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin
    implements
        InsertModelToNamedServiceParameterNamedDataSource<RegistrationTypeParameter>,
        UpdateModelToNamedServiceParameterNamedDataSource<LoginTypeParameter>
{
  final FirebaseAuthService _firebaseAuthService;

  UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin(this._firebaseAuthService);

  @override
  Future<Response> insertModelToNamedServiceParameterNamed(
      RegistrationTypeParameter parameter)
  async {
    Registration registration = parameter.getParameter;
    try {
      await _firebaseAuthService
          .getFirebaseAuthSingleton
          .getFirebaseAuth
          .createUserWithEmailAndPassword(email: registration.email, password: registration.password);
      return Response.success(true);
    } on FirebaseAuthException catch (e) {
      return Response.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForSignUp(this,e.code));
    } catch (_) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }

  @override
  Future<Response> updateModelToNamedServiceParameterNamed(
      LoginTypeParameter parameter)
  async {
    Login login = parameter.getParameter;
    try {
      await _firebaseAuthService
          .getFirebaseAuthSingleton
          .getFirebaseAuth
          .signInWithEmailAndPassword(email: login.email, password: login.password);
      return Response.success(true);
    } on FirebaseAuthException catch (e) {
      return Response.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForLogIn(this,e.code));
    } catch (_) {
      return Response.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }
}