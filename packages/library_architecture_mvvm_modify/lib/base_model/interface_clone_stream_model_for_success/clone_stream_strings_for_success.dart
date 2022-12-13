import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamStringsForSuccess
    implements ICloneStreamModelForSuccess<Strings,ListStrings>
{
  @override
  IStreamModel<Strings, ListStrings>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<Strings,ListStrings>(Strings.success(""), ListStrings.success([]));
  }
}