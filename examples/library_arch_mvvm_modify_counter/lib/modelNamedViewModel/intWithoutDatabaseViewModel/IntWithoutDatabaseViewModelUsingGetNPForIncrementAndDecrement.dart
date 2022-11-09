import 'package:library_architecture_mvvm_modify/base_model_named_database/int_without_database.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_database_and_base_list_model_named_database_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/int_without_database_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/default_stream_controller.dart';

class IntWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement
    extends IntWithoutDatabaseViewModel
{
  IntWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement()
      : super(
      [EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP],
      DefaultStreamController<IntWithoutDatabase>());

  @override
  Object thisClass() {
    return this;
  }

  Stream<IntWithoutDatabase> get getStreamIntWithoutDatabaseUsingGetNPForIncrementAndDecrement {
    return getStreamModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }

  IntWithoutDatabase get getIntWithoutDatabaseUsingGetNPForIncrementAndDecrement {
    return getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }

  void setIntWithoutDatabaseUsingGetNPForIncrementAndDecrement(
      IntWithoutDatabase int)
  {
    setModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP,int);
  }

  void notifyStreamIntWithoutDatabaseUsingGetNPForIncrementAndDecrement() {
    notifyStreamModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }
}