import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteList.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postForInfiniteListViewModel/PostForInfiniteListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_vm.dart';

class PostForInfiniteListViewModelUsingGetNP
    extends PostForInfiniteListViewModel
{
  PostForInfiniteListViewModelUsingGetNP()
      : super.noDataSource(
      [EnumBaseModelVM.getModelFromNamedDatabaseNP],
      []);

  @override
  Object thisClass() {
    return this;
  }

  Stream<PostForInfiniteList> get getStreamPostForInfiniteListUsingGetNP {
    return getStreamModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }

  PostForInfiniteList get getPostForInfiniteListUsingGetNP {
    return getModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }

  void setPostForInfiniteListUsingGetNPAndClone(
      PostForInfiniteList postForInfiniteList)
  {
    super.setModelUsingClone(EnumBaseModelVM.getModelFromNamedDatabaseNP, postForInfiniteList);
  }

  void notifyStreamPostForInfiniteListUsingGetNP() {
    super.notifyStreamModel(EnumBaseModelVM.getModelFromNamedDatabaseNP);
  }
}