import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/CustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/ListCustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/modelQNamedServiceViewModel/CustomTimerQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';

class CustomTimerQNoServiceViewModelUsingGetNP<T extends CustomTimer,Y extends ListCustomTimer<T>>
    extends CustomTimerQNamedServiceViewModel<T,Y>
{
  CustomTimerQNoServiceViewModelUsingGetNP(IStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super.noDataSource([EnumForIStreamModelVM.getNP],iCloneStreamModelForSuccess);

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  Object? get getModelQNamedServiceDataSource => null;

  T? get getCustomTimerUsingGetNP {
    return getModel(EnumForIStreamModelVM.getNP);
  }
}