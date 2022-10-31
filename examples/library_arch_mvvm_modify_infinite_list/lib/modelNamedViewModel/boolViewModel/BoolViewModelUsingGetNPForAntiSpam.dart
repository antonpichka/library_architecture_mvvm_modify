import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_and_base_list_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_controller.dart';

class BoolViewModelUsingGetNPForAntiSpam
    extends BoolViewModel
{
  BoolViewModelUsingGetNPForAntiSpam()
      : super(
      [EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP],
      DefaultStreamController<Bool>());

  Stream<Bool> get getStreamBoolUsingGetNPForAntiSpam {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP);
  }

  Bool get getBoolUsingGetNPForAntiSpam {
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP);
  }

  void setBoolUsingGetNPForAntiSpam(Bool bool) {
    setModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP,bool);
  }

  void notifyStreamBoolUsingGetNPForAntiSpam() {
    notifyStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP);
  }
}