import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/int_q_no_service_view_model.dart';

class IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement<T extends Int,Y extends ListInt>
    extends IntQNoServiceViewModel<T,Y>
{
  IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement(ICloneModelForSuccess<T,Y> iCloneModelForSuccess,ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super([EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP],iCloneModelForSuccess,iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Stream<T>? get getStreamIntUsingGetNPForIncrementAndDecrement {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  T? get getIntUsingGetNPForIncrementAndDecrement {
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }

  void setIntUsingGetNPForIncrementAndDecrement(
      T? int)
  {
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP,int);
  }

  void notifyStreamIntUsingGetNPForIncrementAndDecrement() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedServiceNP);
  }
}