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

class ListPost
    extends BaseListModel<Post>
{
  bool? _hasReachedMax;

  ListPost.success(super.list) : super.success() {
    if(getParameterList!.isEmpty) {
      _hasReachedMax = true;
      return;
    }
    _hasReachedMax = false;
  }

  ListPost.exception(super.exception) : super.exception() {
    _hasReachedMax = false;
  }

  @nonVirtual
  bool get getParameterHasReachedMax => _hasReachedMax!;

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

  bool get getOneParametersNamedForPostsListWidget => _hasReachedMax!;

  int get getTwoParametersNamedForPostsListWidget {
    if(_hasReachedMax!) {
      return getParameterList!.length;
    }
    return getParameterList!.length + 1;
  }

  @nonVirtual
  set setParameterHasReachedMax(bool hasReachedMax) => _hasReachedMax = hasReachedMax;

  void setOneParametersNamedForPostsListWidget(
      ListPost listPost)
  {
    setParameterExceptionController = listPost.getParameterExceptionController;
    _hasReachedMax = listPost.getParameterHasReachedMax;
    if(!_hasReachedMax!) {
      insertListToList(listPost.getParameterList!);
      return;
    }
  }

  void setTwoParametersNamedForPostsListWidget(
      ListPost listPost)
  {
    setParameterExceptionController = listPost.getParameterExceptionController;
    _hasReachedMax = listPost.getParameterHasReachedMax;
  }

  bool isOneParametersNamedForPostsListWidget(
      int index)
  {
    return index >= getParameterList!.length;
  }
}