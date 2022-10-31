import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/int_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_controller.dart';

class IntViewModelUsingGetNPForIncrementAndDecrement
    extends IntViewModel
{
  IntViewModelUsingGetNPForIncrementAndDecrement()
      : super(
      [EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP],
      DefaultStreamController<Int>());

  Stream<Int> get getStreamIntUsingGetNPForIncrementAndDecrement {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP);
  }

  Int get getIntUsingGetNPForIncrementAndDecrement {
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP);
  }

  void setIntUsingGetNPForIncrementAndDecrement(Int int) {
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP,int);
  }

  void notifyStreamIntUsingGetNPForIncrementAndDecrement() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP);
  }
}