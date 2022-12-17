import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/utility/exception_controller.dart';

enum EnumListPostForPostsListWidget {
  success,
  isEmptyList,
  noInternetItLocalException,
  serverNotWorkItNetworkException,
}

class ListPost<T extends Post>
    extends BaseListModel<T>
{
  @protected
  bool? hasReachedMax;

  ListPost.success(super.list) : super.success() {
    if(getParameterList!.isEmpty) {
      hasReachedMax = true;
      return;
    }
    hasReachedMax = false;
  }

  ListPost.exception(super.exception)
      : hasReachedMax = false,
        super.exception();

  EnumListPostForPostsListWidget get getEnumListPostForPostsListWidget {
    if(getParameterExceptionController.enumWhatIsTheException == EnumWhatIsTheException.localException) {
      return EnumListPostForPostsListWidget.noInternetItLocalException;
    }
    if(getParameterExceptionController.enumWhatIsTheException == EnumWhatIsTheException.networkException) {
      return EnumListPostForPostsListWidget.serverNotWorkItNetworkException;
    }
    if(getParameterList!.isEmpty) {
      return EnumListPostForPostsListWidget.isEmptyList;
    }
    return EnumListPostForPostsListWidget.success;
  }

  bool? get getOneParametersNamedForPostsListWidget => hasReachedMax;
  int? get getTwoParametersNamedForPostsListWidget {
    if(hasReachedMax!) {
      return getParameterList!.length;
    }
    return getParameterList!.length + 1;
  }
  bool? get getThreeParametersNamedForPostsListWidget => hasReachedMax;
  bool? get getFourParametersNamedForPostsListWidget => hasReachedMax;

  void setOneParametersNamedForPostsListWidget(
      ListPost<T> listPost)
  {
    exceptionController = listPost.getParameterExceptionController;
    hasReachedMax = listPost.getThreeParametersNamedForPostsListWidget;
    if(!hasReachedMax!) {
      insertListToList(listPost.getParameterList!);
      return;
    }
  }

  void setTwoParametersNamedForPostsListWidget(
      ListPost<T> listPost)
  {
    setParameterExceptionController = listPost.getParameterExceptionController;
    hasReachedMax = listPost.getFourParametersNamedForPostsListWidget;
  }

  bool isOneParametersNamedForPostsListWidget(
      int index)
  {
    return index >= getParameterList!.length;
  }
}