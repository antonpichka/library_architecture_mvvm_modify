import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_stream_model_for_success/i_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class StreamBoolForSuccess
    implements IStreamModelForSuccess<Bool,ListBool>
{
  @override
  IStreamModel<Bool, ListBool>? streamModelForSuccess() {
    return DefaultStreamModel<Bool,ListBool>(Bool.success(false),ListBool.success([]));
  }
}