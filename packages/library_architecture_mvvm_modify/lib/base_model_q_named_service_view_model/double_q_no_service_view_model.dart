import 'package:library_architecture_mvvm_modify/base_model/double.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_double.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class DoubleQNoServiceViewModel<T extends Double,Y extends ListDouble<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  // Default class: CloneStreamDoubleForSuccess()
  DoubleQNoServiceViewModel(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();

  @override
  Object? get getModelQNamedServiceDataSource => null;
}