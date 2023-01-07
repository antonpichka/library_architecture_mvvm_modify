import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

abstract class BoolQThereIsStateViewModel<T extends Bool,Y extends ListBool<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  // Default class: StreamBoolForSuccess()
  BoolQThereIsStateViewModel(super.iStreamModelForSuccess) : super();
}