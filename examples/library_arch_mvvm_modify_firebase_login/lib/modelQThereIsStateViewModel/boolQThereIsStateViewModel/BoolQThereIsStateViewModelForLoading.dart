import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';

class BoolQThereIsStateViewModelForLoading<T extends Bool,Y extends ListBool<T>>
    extends BoolQThereIsStateViewModel<T,Y>
{
  BoolQThereIsStateViewModelForLoading(super.iStreamModelForSuccess);

  Stream<T>? get getStreamBoolForLoading {
    return getStreamModel;
  }

  T? get getBoolForLoading {
    return getModel;
  }

  void notifyStreamBoolForLoading() {
    notifyStreamModel();
  }
}