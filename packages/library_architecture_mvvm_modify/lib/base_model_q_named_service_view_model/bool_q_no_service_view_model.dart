import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class BoolQNoServiceViewModel<T extends Bool,Y extends ListBool<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  // Default class: CloneStreamBoolForSuccess()
  BoolQNoServiceViewModel(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();

  @override
  Object? get getModelQNamedServiceDataSource => null;
}