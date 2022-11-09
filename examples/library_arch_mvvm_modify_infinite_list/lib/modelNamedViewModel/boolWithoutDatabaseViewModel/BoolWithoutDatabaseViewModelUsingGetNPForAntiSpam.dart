import 'package:library_architecture_mvvm_modify/base_model_named_database/bool_without_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_without_database_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_database_and_base_list_model_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_controller.dart';

class BoolWithoutDatabaseViewModelUsingGetNPForAntiSpam
    extends BoolWithoutDatabaseViewModel
{
  BoolWithoutDatabaseViewModelUsingGetNPForAntiSpam()
      : super(
      [EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP],
      DefaultStreamController<BoolWithoutDatabase>());

  @override
  Object thisClass() {
    return this;
  }

  Stream<BoolWithoutDatabase> get getStreamBoolWithoutDatabaseUsingGetNPForAntiSpam {
    return getStreamModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }

  BoolWithoutDatabase get getBoolWithoutDatabaseUsingGetNPForAntiSpam {
    return getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }

  void setBoolWithoutDatabaseUsingGetNPForAntiSpam(
      BoolWithoutDatabase boolWithoutDatabase)
  {
    setModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP,boolWithoutDatabase);
  }

  void notifyStreamBoolWithoutDatabaseUsingGetNPForAntiSpam() {
    notifyStreamModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }
}