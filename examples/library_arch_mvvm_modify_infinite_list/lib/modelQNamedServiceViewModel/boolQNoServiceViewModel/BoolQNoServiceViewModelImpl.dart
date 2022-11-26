import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/bool_q_no_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_named_vm/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model.dart';

abstract class BoolQNoServiceViewModelImpl
    extends BoolQNoServiceViewModel
{
  BoolQNoServiceViewModelImpl(List<EnumBaseModelAndBaseListModelVM> list) : super.noDataSource(list);

  @override
  IStreamModel<Bool,ListBool> initIStreamModelForSuccess() {
    return DefaultStreamModel<Bool,ListBool>(Bool.success(false),ListBool.success([]));
  }
}