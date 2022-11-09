import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteListWithoutDatabase/PostForInfiniteListWithoutDatabase.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postForInfiniteListWithoutDatabaseViewModel/PostForInfiniteListWithoutDatabaseViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_database_and_base_list_model_named_database_vm.dart';

class PostForInfiniteListWithoutDatabaseViewModelUsingGetNP
    extends PostForInfiniteListWithoutDatabaseViewModel
{
  PostForInfiniteListWithoutDatabaseViewModelUsingGetNP() : super.noDataSource([EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP]);

  @override
  Object thisClass() {
    return this;
  }

  Stream<PostForInfiniteListWithoutDatabase> get getStreamPostForInfiniteListWithoutDatabaseUsingGetNP {
    return getStreamModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }

  PostForInfiniteListWithoutDatabase get getPostForInfiniteListWithoutDatabaseUsingGetNP {
    return getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }

  void setPostForInfiniteListWithoutDatabaseUsingGetNPAndClone(
      PostForInfiniteListWithoutDatabase postForInfiniteList)
  {
    super.setModelNamedDatabaseUsingClone(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP, postForInfiniteList);
  }

  void notifyStreamPostForInfiniteListWithoutDatabaseUsingGetNP() {
    super.notifyStreamModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }
}