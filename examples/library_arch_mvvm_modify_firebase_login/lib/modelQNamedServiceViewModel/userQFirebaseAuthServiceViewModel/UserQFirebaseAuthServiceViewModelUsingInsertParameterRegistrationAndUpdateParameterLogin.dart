import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/fbds/UpdateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/RegistrationTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/insert_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';
import 'package:meta/meta.dart';

class UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<T extends User,Y extends ListUser<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements
        InsertModelToNamedServiceParameterNamedDataSource<BoolTypeParameter,RegistrationTypeParameter>,
        UpdateModelToNamedServiceParameterNamedDataSource<BoolTypeParameter,LoginTypeParameter>
{
  @protected
  final firebaseAuthService = FirebaseAuthService();

  Future<BoolTypeParameter?> insertUserToFirebaseAuthServiceParameterRegistration(RegistrationTypeParameter registrationTypeParameter) {
    return insertModelToNamedServiceParameterNamed<BoolTypeParameter,RegistrationTypeParameter>(registrationTypeParameter);
  }

  Future<BoolTypeParameter?> updateUserToFirebaseAuthServiceParameterLoginUsingFBDS(LoginTypeParameter loginTypeParameter) {
    return updateModelToNamedServiceParameterNamedUsingFBDS<BoolTypeParameter,LoginTypeParameter>(
        UpdateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin(),
        loginTypeParameter);
  }

  @protected
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<BoolTypeParameter> insertModelToNamedServiceParameterNamedDS(
      RegistrationTypeParameter? registration)
  async {
    try {
      await firebaseAuthService
          .getFirebaseAuthSingleton
          ?.getFirebaseAuth
          ?.createUserWithEmailAndPassword(email: registration!.parameter!.email, password: registration.parameter!.password);
      return BoolTypeParameter.success(true);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return BoolTypeParameter.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForSignUp(this,e.code));
    } catch (_) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }

  @protected
  @override
  Future<BoolTypeParameter> updateModelToNamedServiceParameterNamedDS(
      LoginTypeParameter? login)
  async {
    try {
      await firebaseAuthService
          .getFirebaseAuthSingleton
          ?.getFirebaseAuth
          ?.signInWithEmailAndPassword(email: login!.parameter!.email, password: login.parameter!.password);
      return BoolTypeParameter.success(true);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return BoolTypeParameter.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForLogIn(this,e.code));
    } catch (_) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }
}