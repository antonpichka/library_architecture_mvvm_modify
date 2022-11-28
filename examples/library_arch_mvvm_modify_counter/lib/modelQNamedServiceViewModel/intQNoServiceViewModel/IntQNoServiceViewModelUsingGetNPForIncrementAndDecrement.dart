import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelImpl.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/int.dart';

class IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement
    extends IntQNoServiceViewModelImpl
{
  IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement() : super([EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP]);

  @override
  Object thisClass() {
    return this;
  }

  Stream<Int>? get getStreamIntUsingGetNPForIncrementAndDecrement {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  Int? get getIntUsingGetNPForIncrementAndDecrement {
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  void setIntUsingGetNPForIncrementAndDecrement(
      Int int)
  {
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP,int);
  }

  void notifyStreamIntUsingGetNPForIncrementAndDecrement() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }
}