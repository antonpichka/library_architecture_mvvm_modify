import 'package:firebase_auth/firebase_auth.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/RegistrationTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin
    implements
        InsertModelToNamedServiceParameterNamedDataSource<BoolTypeParameter,RegistrationTypeParameter>,
        UpdateModelToNamedServiceParameterNamedDataSource<BoolTypeParameter,LoginTypeParameter>
{
  final FirebaseAuthService _firebaseAuthService;

  UserQFirebaseAuthServiceDataSourceUsingInsertParameterRegistrationAndUpdateParameterLogin(this._firebaseAuthService);

  @override
  Future<BoolTypeParameter> insertModelToNamedServiceParameterNamed(
      RegistrationTypeParameter? registration)
  async {
    try {
      await _firebaseAuthService
          .getFirebaseAuthSingleton
          ?.getFirebaseAuth
          ?.createUserWithEmailAndPassword(email: registration!.parameter!.email ?? "", password: registration.parameter!.password ?? "");
      return BoolTypeParameter.success(true);
    } on FirebaseAuthException catch (e) {
      return BoolTypeParameter.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForSignUp(this,e.code));
    } catch (_) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }

  @override
  Future<BoolTypeParameter> updateModelToNamedServiceParameterNamed(
      LoginTypeParameter? login)
  async {
    try {
      await _firebaseAuthService
          .getFirebaseAuthSingleton
          ?.getFirebaseAuth
          ?.signInWithEmailAndPassword(email: login!.parameter!.email ?? "", password: login.parameter!.password ?? "");
      return BoolTypeParameter.success(true);
    } on FirebaseAuthException catch (e) {
      return BoolTypeParameter.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForLogIn(this,e.code));
    } catch (_) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }
}