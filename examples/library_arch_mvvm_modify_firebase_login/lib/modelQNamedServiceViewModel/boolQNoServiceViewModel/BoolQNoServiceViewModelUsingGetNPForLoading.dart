import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelImpl.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';

class BoolQNoServiceViewModelUsingGetNPForLoading
    extends BoolQNoServiceViewModelImpl
{
  BoolQNoServiceViewModelUsingGetNPForLoading() : super([EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP]);

  @override
  Object thisClass() {
    return this;
  }

  Stream<Bool>? get getStreamBoolUsingGetNPForLoading {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  Bool? get getBoolUsingGetNPForLoading {
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  void notifyStreamBoolUsingGetNPForLoading() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }
}