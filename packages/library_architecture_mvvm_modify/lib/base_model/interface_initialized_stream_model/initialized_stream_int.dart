import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

/// An example of the implementation of the "IInitializedStreamModel" class, for the Int model
class InitializedStreamInt implements IInitializedStreamModel<Int, ListInt> {
  @override
  IStreamModel<Int, ListInt>? initializedStreamModel() {
    return DefaultStreamModel<Int, ListInt>(
        Int.success(0), ListInt.success([]));
  }
}
