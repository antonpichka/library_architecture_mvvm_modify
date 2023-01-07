import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

abstract class StringsQThereIsStateViewModel<T extends Strings,Y extends ListStrings<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  // Default class: StreamStringsForSuccess()
  StringsQThereIsStateViewModel(super.iStreamModelForSuccess) : super();
}