import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

enum EnumListPostForPostsListWidget {
  success,
  isEmptyList,
  noInternetItLocalException,
  serverNotWorkItNetworkException,
}

class ListPost
    extends BaseListModel<Post>
{
  bool? hasReachedMax;

  ListPost.success(super.list) : super.success() {
    if(list!.isEmpty) {
      hasReachedMax = true;
      return;
    }
    hasReachedMax = false;
  }

  ListPost.exception(super.exception) : super.exception() {
    hasReachedMax = false;
  }

  EnumListPostForPostsListWidget get getEnumListPostForPostsListWidget {
    if(exceptionController.enumWhatIsTheException == EnumWhatIsTheException.localException) {
      return EnumListPostForPostsListWidget.noInternetItLocalException;
    }
    if(exceptionController.enumWhatIsTheException == EnumWhatIsTheException.networkException) {
      return EnumListPostForPostsListWidget.serverNotWorkItNetworkException;
    }
    if(list!.isEmpty) {
      return EnumListPostForPostsListWidget.isEmptyList;
    }
    return EnumListPostForPostsListWidget.success;
  }

  int get getParameterLengthByList {
    if(hasReachedMax!) {
      return list!.length;
    }
    return list!.length + 1;
  }

  void insertListToListAndSetFromListPostParametersExceptionControllerAndHasReachedMax(
      ListPost listPost)
  {
    exceptionController = listPost.exceptionController;
    hasReachedMax = listPost.hasReachedMax!;
    if(hasNotReachedMax()) {
      insertListToList(listPost.list!);
      return;
    }
  }

  void setFromListPostParametersExceptionControllerAndHasReachedMax(
      ListPost listPost)
  {
    exceptionController  = listPost.exceptionController;
    hasReachedMax = listPost.hasReachedMax!;
  }

  bool isFromIndexMoreOrEqualParameterLengthByList(
      int index)
  {
    return index >= list!.length;
  }

  bool hasNotReachedMax() {
    return !hasReachedMax!;
  }
}