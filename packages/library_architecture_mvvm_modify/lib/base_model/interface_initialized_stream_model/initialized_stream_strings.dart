import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

/// An example of the implementation of the "IInitializedStreamModel" class, for the Strings model
final class InitializedStreamStrings
    implements IInitializedStreamModel<Strings, ListStrings> {
  @override
  IStreamModel<Strings, ListStrings>? initializedStreamModel() {
    return DefaultStreamModel<Strings, ListStrings>(
        Strings.success(""), ListStrings.success([]));
  }
}
