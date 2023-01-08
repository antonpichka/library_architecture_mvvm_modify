import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamEmailInput
    implements IInitializedStreamModel<EmailInput,ListEmailInput<EmailInput>>
{
  @override
  IStreamModel<EmailInput,ListEmailInput<EmailInput>>? initializedStreamModel() {
    return DefaultStreamModel<EmailInput,ListEmailInput<EmailInput>>(EmailInput.getEmailInputForSuccess, ListEmailInput.success([]));
  }
}