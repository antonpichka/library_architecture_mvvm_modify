import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelImpl.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';

class BoolQNoServiceViewModelUsingGetNPForAntiSpam
    extends BoolQNoServiceViewModelImpl
{
  BoolQNoServiceViewModelUsingGetNPForAntiSpam() : super([EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP]);

  @override
  Object thisClass() {
    return this;
  }

  Bool? get getBoolUsingGetNPForAntiSpam {
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }
}