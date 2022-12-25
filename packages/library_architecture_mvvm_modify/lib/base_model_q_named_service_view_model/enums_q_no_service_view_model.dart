import 'package:library_architecture_mvvm_modify/base_model/enums.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_enums.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class EnumsQNoServiceViewModel<T extends Enums,Y extends ListEnums<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  // Default class: CloneStreamEnumsForSuccess()
  EnumsQNoServiceViewModel(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();

  @override
  Object? get getModelQNamedServiceDataSource => null;
}