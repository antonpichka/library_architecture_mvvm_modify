import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

abstract class IntQThereIsStateViewModel<T extends Int,Y extends ListInt<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  // Default class: StreamIntForSuccess()
  IntQThereIsStateViewModel(super.iStreamModelForSuccess) : super();
}