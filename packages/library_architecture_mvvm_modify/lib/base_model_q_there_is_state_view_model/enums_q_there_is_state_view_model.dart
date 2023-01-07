import 'package:library_architecture_mvvm_modify/base_model/enums.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_enums.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

abstract class EnumsQThereIsStateViewModel<T extends Enums,Y extends ListEnums<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  // Default class: StreamEnumsForSuccess()
  EnumsQThereIsStateViewModel(super.iStreamModelForSuccess) : super();
}