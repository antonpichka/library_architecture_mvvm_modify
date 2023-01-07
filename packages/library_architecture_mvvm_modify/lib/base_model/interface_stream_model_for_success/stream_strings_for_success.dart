import 'package:library_architecture_mvvm_modify/base_model/interface_stream_model_for_success/i_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class StreamStringsForSuccess
    implements IStreamModelForSuccess<Strings,ListStrings>
{
  @override
  IStreamModel<Strings, ListStrings>? streamModelForSuccess() {
    return DefaultStreamModel<Strings,ListStrings>(Strings.success(""), ListStrings.success([]));
  }
}