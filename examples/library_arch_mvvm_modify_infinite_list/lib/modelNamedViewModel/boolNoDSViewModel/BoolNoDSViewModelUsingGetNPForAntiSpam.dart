import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/bool_no_ds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/list_bool_no_ds.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_no_ds_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream.dart';

class BoolNoDSViewModelUsingGetNPForAntiSpam
    extends BoolNoDSViewModel
{
  BoolNoDSViewModelUsingGetNPForAntiSpam() : super([EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP]);

  @override
  IStream<BoolNoDS,ListBoolNoDS> initAndCloneIStream() {
    return DefaultStream<BoolNoDS,ListBoolNoDS>(BoolNoDS.getBoolNoDS,ListBoolNoDS([]));
  }

  @override
  Object thisClass() {
    return this;
  }

  BoolNoDS get getBoolNoDSUsingGetNPForAntiSpam {
    return getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }
}