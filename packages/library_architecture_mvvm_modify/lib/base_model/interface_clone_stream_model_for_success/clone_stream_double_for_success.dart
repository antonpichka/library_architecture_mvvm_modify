import 'package:library_architecture_mvvm_modify/base_model/double.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_double.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamDoubleForSuccess
    implements ICloneStreamModelForSuccess<Double,ListDouble>
{
  @override
  IStreamModel<Double, ListDouble>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<Double,ListDouble>(Double.success(0.0),ListDouble.success([]));
  }
}