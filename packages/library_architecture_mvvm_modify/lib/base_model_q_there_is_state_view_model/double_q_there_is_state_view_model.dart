import 'package:library_architecture_mvvm_modify/base_model/double.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_double.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

abstract class DoubleQThereIsStateViewModel<T extends Double,Y extends ListDouble<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  // Default class: StreamDoubleForSuccess()
  DoubleQThereIsStateViewModel(super.iStreamModelForSuccess) : super();
}