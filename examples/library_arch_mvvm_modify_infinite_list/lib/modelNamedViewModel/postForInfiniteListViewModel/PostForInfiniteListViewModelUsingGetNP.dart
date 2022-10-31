import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteList.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postForInfiniteListViewModel/PostForInfiniteListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_and_base_list_model_vm.dart';

class PostForInfiniteListViewModelUsingGetNP
    extends PostForInfiniteListViewModel
{
  PostForInfiniteListViewModelUsingGetNP()
      : super.noDataSource(
      [EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP]);

  @override
  Object thisClass() {
    return this;
  }

  Stream<PostForInfiniteList> get getStreamPostForInfiniteListUsingGetNP {
    return getStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP);
  }

  PostForInfiniteList get getPostForInfiniteListUsingGetNP {
    return getModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP);
  }

  void setPostForInfiniteListUsingGetNPAndClone(
      PostForInfiniteList postForInfiniteList)
  {
    super.setModelUsingClone(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP, postForInfiniteList);
  }

  void notifyStreamPostForInfiniteListUsingGetNP() {
    super.notifyStreamModel(EnumBaseModelAndBaseListModelVM.getModelFromNamedDatabaseNP);
  }
}