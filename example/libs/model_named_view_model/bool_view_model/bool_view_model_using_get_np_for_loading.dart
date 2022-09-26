import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_vm.dart';

class BoolViewModelUsingGetNPForLoading
    extends BoolViewModel
{
  BoolViewModelUsingGetNPForLoading() : super(
      [EnumBaseModelVM.getModelFromNamedDatabaseNP],
      []);

  Stream<Bool> get getStreamBoolUsingGetNPForLoading {
    return getStreamModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }

  Bool get getBoolUsingGetNPForLoading {
    return getModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }

  void notifyStreamBoolUsingGetNPForLoading() {
    notifyStreamModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }
}