import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteListWithoutDatabase.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postForInfiniteListViewModel/PostForInfiniteListWithoutDatabaseViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_database_and_base_list_model_named_database_vm.dart';

class PostForInfiniteListViewModelUsingGetNP
    extends PostForInfiniteListViewModel
{
  PostForInfiniteListViewModelUsingGetNP()
      : super.noDataSource(
      [EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP]);

  @override
  Object thisClass() {
    return this;
  }

  Stream<PostForInfiniteList> get getStreamPostForInfiniteListUsingGetNP {
    return getStreamModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }

  PostForInfiniteList get getPostForInfiniteListUsingGetNP {
    return getModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }

  void setPostForInfiniteListUsingGetNPAndClone(
      PostForInfiniteList postForInfiniteList)
  {
    super.setModelNamedDatabaseUsingClone(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP, postForInfiniteList);
  }

  void notifyStreamPostForInfiniteListUsingGetNP() {
    super.notifyStreamModelNamedDatabase(EnumBaseModelNamedDatabaseAndBaseListModelNamedDatabaseVM.getModelFromNamedDatabaseNP);
  }
}