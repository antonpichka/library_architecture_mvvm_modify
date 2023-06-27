import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

/// An example of the implementation of the "IInitializedStreamModel" class, for the Bool model
final class InitializedStreamBool
    implements IInitializedStreamModel<Bool, ListBool> {
  @override
  IStreamModel<Bool, ListBool>? initializedStreamModel() {
    return DefaultStreamModel<Bool, ListBool>(
        Bool.success(false), ListBool.success([]));
  }
}
