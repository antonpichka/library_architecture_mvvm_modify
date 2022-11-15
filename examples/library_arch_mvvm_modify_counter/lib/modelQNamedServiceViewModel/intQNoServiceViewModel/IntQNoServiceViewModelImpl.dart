import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_named_vm/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/int_q_no_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model.dart';

abstract class IntQNoServiceViewModelImpl
    extends IntQNoServiceViewModel
{
  IntQNoServiceViewModelImpl(List<EnumBaseModelAndBaseListModelVM> listEnumBaseModelAndBaseListModelVM) : super(listEnumBaseModelAndBaseListModelVM);

  @override
  IStreamModel<Int,ListInt> initIStreamModelForSuccess() {
    return DefaultStreamModel<Int, ListInt>(Int.success(0), ListInt.success([]));
  }
}