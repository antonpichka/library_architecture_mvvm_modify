import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/bool_q_no_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

abstract class BoolQNoServiceViewModelImpl
    extends BoolQNoServiceViewModel
{
  BoolQNoServiceViewModelImpl(super.list);

  @override
  IStreamModel<Bool, ListBool>? initIStreamModelForSuccess() {
    return DefaultStreamModel(Bool.success(false), ListBool.success([]));
  }
}