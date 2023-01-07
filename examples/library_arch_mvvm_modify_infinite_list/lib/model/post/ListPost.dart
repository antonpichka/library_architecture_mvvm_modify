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
  bool? hasReachedMax;

  ListPost.success(super.list) : super.success() {
    if(list!.isEmpty) {
      hasReachedMax = true;
      return;
    }
    hasReachedMax = false;
  }

  ListPost.exception(super.exception)
      : hasReachedMax = false,
        super.exception();

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

  bool? get getOneParametersNamedForPostsListWidget => hasReachedMax;
  int? get getTwoParametersNamedForPostsListWidget {
    if(hasReachedMax!) {
      return list!.length;
    }
    return list!.length + 1;
  }
  bool? get getThreeParametersNamedForPostsListWidget => hasReachedMax;
  bool? get getFourParametersNamedForPostsListWidget => hasReachedMax;

  void setOneParametersNamedForPostsListWidget(
      ListPost<T> listPost)
  {
    exceptionController = listPost.exceptionController;
    hasReachedMax = listPost.getThreeParametersNamedForPostsListWidget;
    if(!hasReachedMax!) {
      insertListToList(listPost.list!);
      return;
    }
  }

  void setTwoParametersNamedForPostsListWidget(
      ListPost<T> listPost)
  {
    exceptionController = listPost.exceptionController;
    hasReachedMax = listPost.getFourParametersNamedForPostsListWidget;
  }

  bool isOneParametersNamedForPostsListWidget(
      int index)
  {
    return index >= list!.length;
  }
}