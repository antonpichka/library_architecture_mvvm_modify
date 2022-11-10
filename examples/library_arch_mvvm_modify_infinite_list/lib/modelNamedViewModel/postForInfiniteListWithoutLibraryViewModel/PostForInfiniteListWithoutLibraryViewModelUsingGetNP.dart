import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteListWithoutLibrary/PostForInfiniteListWithoutLibrary.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postForInfiniteListWithoutLibraryViewModel/PostForInfiniteListWithoutLibraryViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_named_vm/enum_base_model_named_and_base_list_model_named_vm.dart';

class PostForInfiniteListWithoutLibraryViewModelUsingGetNP
    extends PostForInfiniteListWithoutLibraryViewModel
{
  PostForInfiniteListWithoutLibraryViewModelUsingGetNP() : super.noDataSource([EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP]);

  @override
  Object thisClass() {
    return this;
  }

  Stream<PostForInfiniteListWithoutLibrary> get getStreamPostForInfiniteListWithoutLibraryUsingGetNP {
    return getStreamModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }

  PostForInfiniteListWithoutLibrary get getPostForInfiniteListWithoutLibraryUsingGetNP {
    return getModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }

  void setPostForInfiniteListWithoutLibraryUsingGetNPAndClone(
      PostForInfiniteListWithoutLibrary postForInfiniteList)
  {
    super.setModelNamedUsingClone(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP, postForInfiniteList);
  }

  void notifyStreamPostForInfiniteListWithoutLibraryUsingGetNP() {
    super.notifyStreamModelNamed(EnumBaseModelNamedAndBaseListModelNamedVM.getModelFromNamedNP);
  }
}