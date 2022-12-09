import 'package:library_arch_mvvm_modify_firebase_login/utility/namedTypeParameter/LoginTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_function_before_data_source/update_model_to_named_service_parameter_named_fbds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class UpdateUserToFirebaseAuthServiceParameterLoginFBDSUsingInsertParameterRegistrationAndUpdateParameterLogin
    extends UpdateModelToNamedServiceParameterNamedFBDS
{
  static const constIsNotHasMatchParameterEmail = "isNotHasMatchParameterEmail";
  static const constIsNotHasMatchParameterPassword = "isNotHasMatchParameterPassword";

  @override
  Z? updateModelToNamedServiceParameterNamed<Z extends BaseTypeParameter<Object>, X extends BaseTypeParameter<Object>, C extends BaseTypeParameter<Object>>(
      X? typeParameter,
      C? typeParameterForFBDS)
  {
    LoginTypeParameter? loginTypeParameter = typeParameter as LoginTypeParameter;
    if(loginTypeParameter.parameter!.isNotHasMatchParameterEmail()) {
      return BoolTypeParameter.exceptionForFBDS(LocalException.whereTheUserIsGuilty(this, constIsNotHasMatchParameterEmail)) as Z;
    }
    if(loginTypeParameter.parameter!.isNotHasMatchParameterPassword()) {
      return BoolTypeParameter.exceptionForFBDS(LocalException.whereTheUserIsGuilty(this, constIsNotHasMatchParameterPassword)) as Z;
    }
    return BoolTypeParameter.successForFBDS() as Z;
  }
}