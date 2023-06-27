import 'package:library_arch_mvvm_modify_firebase_login/utility/Login.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/update_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';

final class UpdateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin
    extends UpdateModelToNamedServiceParameterNamedFBDS<bool, Login, Object> {
  static const String constIsNotHasMatchParameterEmail =
      "isNotHasMatchParameterEmail";
  static const String constIsNotHasMatchParameterPassword =
      "isNotHasMatchParameterPassword";

  @override
  Result<bool>? updateModelToNamedServiceParameterNamed(
      Login? parameter, Object? parameterForFBDS) {
    if (parameter!.isNotHasMatchParameterEmail()) {
      return Result<bool>.exceptionForFBDS(LocalException.whereTheUserIsGuilty(
          this, constIsNotHasMatchParameterEmail));
    }
    if (parameter.isNotHasMatchParameterPassword()) {
      return Result<bool>.exceptionForFBDS(LocalException.whereTheUserIsGuilty(
          this, constIsNotHasMatchParameterPassword));
    }
    return Result<bool>.successForFBDS();
  }
}
