import 'package:library_architecture_mvvm_modify/base_model/enums.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_enums.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamEnumsForSuccess
    implements ICloneStreamModelForSuccess<Enums,ListEnums>
{
  @override
  IStreamModel<Enums,ListEnums>? cloneStreamModelForSuccess() {
    return DefaultStreamModel<Enums,ListEnums>(Enums.success(EnumsDefault.zero), ListEnums.success([]));
  }
}