import 'package:flutter/foundation.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/bool_q_no_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';

class BoolQNoServiceViewModelUsingGetNPForLoading<T extends Bool,Y extends ListBool<T>>
    extends BoolQNoServiceViewModel<T,Y>
{
  BoolQNoServiceViewModelUsingGetNPForLoading(ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super([EnumForIStreamModelVM.getNP],iCloneStreamModelForSuccess);

  @protected
  @override
  Object get thisClass => this;

  Stream<T>? get getStreamBoolUsingGetNPForLoading {
    return getStreamModel(EnumForIStreamModelVM.getNP);
  }

  T? get getBoolUsingGetNPForLoading {
    return getModel(EnumForIStreamModelVM.getNP);
  }

  void notifyStreamBoolUsingGetNPForLoading() {
    notifyStreamModel(EnumForIStreamModelVM.getNP);
  }
}