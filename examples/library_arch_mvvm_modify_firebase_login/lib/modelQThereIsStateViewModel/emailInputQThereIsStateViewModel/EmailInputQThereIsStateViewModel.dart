import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/EmailInput.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/emailInput/ListEmailInput.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

class EmailInputQThereIsStateViewModel<T extends EmailInput,Y extends ListEmailInput<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  EmailInputQThereIsStateViewModel(super.iStreamModelForSuccess);

  Stream<T>? get getStreamEmailInput {
    return getStreamModel;
  }

  T? get getEmailInput {
    return getModel;
  }

  void notifyStreamEmailInput() {
    notifyStreamModel();
  }
}