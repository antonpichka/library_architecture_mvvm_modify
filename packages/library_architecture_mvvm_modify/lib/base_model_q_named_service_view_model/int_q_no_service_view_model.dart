import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';

abstract class IntQNoServiceViewModel<T extends Int,Y extends ListInt<T>>
    extends BaseModelQNamedServiceViewModel<T,Y,Object>
{
  // Default class: CloneStreamIntForSuccess()
  IntQNoServiceViewModel(super.list,super.iCloneStreamModelForSuccess) : super.noDataSource();
}