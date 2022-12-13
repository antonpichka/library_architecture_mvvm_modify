import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class StringsQNoServiceViewModel<T extends Strings,Y extends ListStrings<T>>
    extends BaseModelQNamedServiceViewModel<T,Y,Object>
{
  // Default class: CloneStreamStringsForSuccess()
  StringsQNoServiceViewModel(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();
}