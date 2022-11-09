import 'package:library_architecture_mvvm_modify/base_model/bool_without_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_without_database_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_database_and_base_list_model_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_controller.dart';

class BoolViewModelUsingGetNPForAntiSpam
    extends BoolWithoutDatabaseViewModel
{
  BoolViewModelUsingGetNPForAntiSpam()
      : super(
      [EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP],
      DefaultStreamController<Bool>());

  Stream<Bool> get getStreamBoolUsingGetNPForAntiSpam {
    return getStreamModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }

  Bool get getBoolUsingGetNPForAntiSpam {
    return getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }

  void setBoolUsingGetNPForAntiSpam(Bool bool) {
    setModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP,bool);
  }

  void notifyStreamBoolUsingGetNPForAntiSpam() {
    notifyStreamModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }
}