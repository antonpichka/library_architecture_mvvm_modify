import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/utility/enum_what_is_the_exception.dart';

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

  ListPost.success(List<Post>? list) : super.success(list) {
    if(list!.isEmpty) {
      hasReachedMax = true;
      return;
    }
    hasReachedMax = false;
  }

  ListPost.exception(BaseException exception) : super.exception(exception) {
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

  set setParameterHasReachedMax(
      bool hasReachedMax)
  {
    this.hasReachedMax = hasReachedMax;
  }

  void insertListToListAndSetFromListPostParametersExceptionControllerAndHasReachedMax(
      ListPost listPost)
  {
    setParameterExceptionController = listPost.exceptionController;
    setParameterHasReachedMax = listPost.hasReachedMax!;
    if(hasNotReachedMax()) {
      insertListToList(listPost.list!);
      return;
    }
  }

  void setFromListPostParametersExceptionControllerAndHasReachedMax(
      ListPost listPost)
  {
    setParameterExceptionController = listPost.exceptionController;
    setParameterHasReachedMax = listPost.hasReachedMax!;
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