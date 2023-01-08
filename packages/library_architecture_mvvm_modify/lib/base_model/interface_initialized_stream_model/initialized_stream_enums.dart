import 'package:library_architecture_mvvm_modify/base_model/enums.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_enums.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamEnums
    implements IInitializedStreamModel<Enums,ListEnums>
{
  @override
  IStreamModel<Enums,ListEnums>? initializedStreamModel() {
    return DefaultStreamModel<Enums,ListEnums>(Enums.success(EnumsDefault.zero), ListEnums.success([]));
  }
}