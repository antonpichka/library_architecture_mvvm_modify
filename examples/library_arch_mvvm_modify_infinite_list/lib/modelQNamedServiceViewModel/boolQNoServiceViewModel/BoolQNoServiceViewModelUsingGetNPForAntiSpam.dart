import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_list_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/bool_q_no_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';

class BoolQNoServiceViewModelUsingGetNPForAntiSpam<T extends Bool,Y extends ListBool>
    extends BoolQNoServiceViewModel<T,Y>
{
  BoolQNoServiceViewModelUsingGetNPForAntiSpam(ICloneModelForSuccess<T> iCloneModelForSuccess,ICloneListModelForSuccess<Y> iCloneListModelForSuccess,ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super([EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP],iCloneModelForSuccess,iCloneListModelForSuccess,iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  T? get getBoolUsingGetNPForAntiSpam {
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }
}