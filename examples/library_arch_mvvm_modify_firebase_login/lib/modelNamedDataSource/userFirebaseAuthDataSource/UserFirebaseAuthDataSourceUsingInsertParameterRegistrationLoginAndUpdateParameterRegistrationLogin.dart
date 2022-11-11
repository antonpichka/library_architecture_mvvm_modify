import 'package:firebase_auth/firebase_auth.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelNamedDataSource/userFirebaseAuthDataSource/UserFirebaseAuthDataSource.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/customException/SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/customModel/RegistrationLogin.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/customTypeParameter/RegistrationLoginTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/bool_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/insert_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_data_source/update_model_to_named_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/response/response.dart';

class UserFirebaseAuthDataSourceUsingInsertParameterRegistrationLoginAndUpdateParameterRegistrationLogin
    extends UserFirebaseAuthDataSource
    implements
        InsertModelToNamedParameterNamedDataSource<RegistrationLoginTypeParameter>,
        UpdateModelToNamedParameterNamedDataSource<RegistrationLoginTypeParameter>
{
  @override
  Future<Response<BoolTypeParameter, BaseException>> insertModelToNamedParameterNamed(
      RegistrationLoginTypeParameter parameter)
  async {
    RegistrationLogin registrationLogin = parameter.getParameter;
    try {
      await getFirebaseAuth.createUserWithEmailAndPassword(
          email: registrationLogin.email,
          password: registrationLogin.password);
      return Response.success(BoolTypeParameter(true));
    } on FirebaseAuthException catch (e) {
      return Response.getException(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForSignUp(this,e.code));
    } catch (_) {
      return Response.getException(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }

  @override
  Future<Response<BoolTypeParameter, BaseException>> updateModelToNamedParameterNamed(
      RegistrationLoginTypeParameter parameter)
  async {
    RegistrationLogin registrationLogin = parameter.getParameter;
    try {
      await getFirebaseAuth.signInWithEmailAndPassword(
          email: registrationLogin.email,
          password: registrationLogin.password);
      return Response.success(BoolTypeParameter(true));
    } on FirebaseAuthException catch (e) {
      return Response.getException(SignUpAndLogInWithEmailAndPasswordAndGoogleFailureException.fromCodeForLogIn(this,e.code));
    } catch (_) {
      return Response.getException(LocalException(this,EnumGuiltyForLocalException.device,_.toString()));
    }
  }
}