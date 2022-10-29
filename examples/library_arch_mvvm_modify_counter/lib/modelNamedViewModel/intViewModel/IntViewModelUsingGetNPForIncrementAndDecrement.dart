import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/int_view_model.dart';

class IntViewModelUsingGetNPForIncrementAndDecrement
    extends IntViewModel
{
  IntViewModelUsingGetNPForIncrementAndDecrement()
      : super(
      [EnumBaseModelVM.getModelFromNamedDatabaseNP],
      []);

  Stream<Int> get getStreamIntUsingGetNPForIncrementAndDecrement {
    return getStreamModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }

  Int get getIntUsingGetNPForIncrementAndDecrement {
    return getModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }

  void setIntUsingGetNPForIncrementAndDecrement(Int int) {
    setModel(EnumBaseModelVM.getModelFromNamedDatabaseNP,int);
  }

  void notifyStreamIntUsingGetNPForIncrementAndDecrement() {
    notifyStreamModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }
}