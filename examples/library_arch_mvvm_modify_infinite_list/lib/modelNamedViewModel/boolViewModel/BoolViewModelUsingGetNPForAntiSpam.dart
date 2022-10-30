import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_vm.dart';

class BoolViewModelUsingGetNPForAntiSpam
    extends BoolViewModel
{
  BoolViewModelUsingGetNPForAntiSpam()
      : super(
      [EnumBaseModelVM.getModelFromNamedDatabaseNP],
      []);

  Stream<Bool> get getStreamBoolUsingGetNPForAntiSpam {
    return getStreamModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }

  Bool get getBoolUsingGetNPForAntiSpam {
    return getModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }

  void setBoolUsingGetNPForAntiSpam(Bool bool) {
    setModel(EnumBaseModelVM.getModelFromNamedDatabaseNP,bool);
  }

  void notifyStreamBoolUsingGetNPForAntiSpam() {
    notifyStreamModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }
}