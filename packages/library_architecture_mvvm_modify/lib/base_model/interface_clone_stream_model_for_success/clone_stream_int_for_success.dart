import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamIntForSuccess
    implements ICloneStreamModelForSuccess<Int,ListInt>
{
  @override
  IStreamModel<Int, ListInt>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<Int,ListInt>(Int.success(0), ListInt.success([]));
  }
}