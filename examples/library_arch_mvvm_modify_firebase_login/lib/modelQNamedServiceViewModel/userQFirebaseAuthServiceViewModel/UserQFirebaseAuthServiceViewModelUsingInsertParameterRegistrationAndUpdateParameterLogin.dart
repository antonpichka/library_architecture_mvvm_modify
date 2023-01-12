import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/fbds/UpdateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Login.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Registration.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_named_service.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/insert_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';

class UserQFirebaseAuthServiceViewModelUsingInsertParameterRegistrationAndUpdateParameterLogin<T extends User,Y extends ListUser<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements
        InsertModelToNamedServiceParameterNamedDataSource<bool,Registration>,
        UpdateModelToNamedServiceParameterNamedDataSource<bool,Login>
{
  @protected
  final firebaseAuthService = FirebaseAuthService();

  Future<Result<bool>?> insertUserToFirebaseAuthServiceParameterRegistration(Registration registration) {
    return insertModelToNamedServiceParameterNamed<bool,Registration>(registration);
  }

  Future<Result<bool>?> updateUserToFirebaseAuthServiceParameterLoginUsingFBDS(Login login) {
    return updateModelToNamedServiceParameterNamedUsingFBDS<bool,Login>(
        UpdateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin(),
        login);
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @visibleForTesting
  @nonVirtual
  @override
  List<BaseNamedService?> get listNamedService => [firebaseAuthService];

  @protected
  @override
  Future<Result<bool>?> insertModelToNamedServiceParameterNamedDS(
      Registration? parameter)
  async {
    try {
      await firebaseAuthService
          .getFirebaseAuth
          ?.createUserWithEmailAndPassword(email: parameter!.email, password: parameter.password);
      return Result<bool>.success(true);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Result<bool>.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForSignUp(this,e.code));
    } catch (_) {
      return Result<bool>.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }

  @protected
  @override
  Future<Result<bool>?> updateModelToNamedServiceParameterNamedDS(
      Login? parameter)
  async {
    try {
      await firebaseAuthService
          .getFirebaseAuth
          ?.signInWithEmailAndPassword(email: parameter!.email, password: parameter.password);
      return Result<bool>.success(true);
    } on firebase_auth.FirebaseAuthException catch (e) {
      return Result<bool>.exception(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForLogIn(this,e.code));
    } catch (_) {
      return Result<bool>.exception(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }
}