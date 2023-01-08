import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInput.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

class PasswordInputQThereIsStateViewModel<T extends PasswordInput,Y extends ListPasswordInput<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  PasswordInputQThereIsStateViewModel(super.iInitializedStreamModel);

  Stream<T>? get getStreamPasswordInput {
    return getStreamModel;
  }

  T? get getPasswordInput {
    return getModel;
  }

  void notifyStreamPasswordInput() {
    notifyStreamModel();
  }
}