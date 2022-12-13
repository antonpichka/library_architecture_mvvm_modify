import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/int_q_no_service_view_model.dart';

class IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement<T extends Int,Y extends ListInt<T>>
    extends IntQNoServiceViewModel<T,Y>
{
  IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement(ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super([EnumForIStreamModelVM.getNP],iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  Stream<T>? get getStreamIntUsingGetNPForIncrementAndDecrement {
    return getStreamModel(EnumForIStreamModelVM.getNP);
  }

  T? get getIntUsingGetNPForIncrementAndDecrement {
    return getModel(EnumForIStreamModelVM.getNP);
  }

  void setIntUsingGetNPForIncrementAndDecrement(
      T? int)
  {
    setModel(EnumForIStreamModelVM.getNP,int);
  }

  void notifyStreamIntUsingGetNPForIncrementAndDecrement() {
    notifyStreamModel(EnumForIStreamModelVM.getNP);
  }
}