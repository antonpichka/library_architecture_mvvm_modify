import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/int_no_ds.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/list_int_no_ds.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/int_no_ds_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_model_named.dart';
import 'package:library_architecture_mvvm_modify/utility/i_stream_model_named.dart';

class IntNoDSViewModelUsingGetNPForIncrementAndDecrement
    extends IntNoDSViewModel
{
  IntNoDSViewModelUsingGetNPForIncrementAndDecrement() : super([EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP]);

  @override
  IStreamModelNamed<IntNoDS,ListIntNoDS> initIStreamModelForSuccess() {
    return DefaultStreamModelNamed<IntNoDS,ListIntNoDS>(IntNoDS.getIntNoDS, ListIntNoDS([]));
  }

  @override
  Object thisClass() {
    return this;
  }

  Stream<IntNoDS> get getStreamIntNoDSUsingGetNPForIncrementAndDecrement {
    return getStreamModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }

  IntNoDS get getIntNoDSUsingGetNPForIncrementAndDecrement {
    return getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }

  void setIntNoDSUsingGetNPForIncrementAndDecrement(
      IntNoDS int)
  {
    setModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP,int);
  }

  void notifyStreamIntNoDSUsingGetNPForIncrementAndDecrement() {
    notifyStreamModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }
}