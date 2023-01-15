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

  ListPost.success(super.listModel) : super.success() {
    if(listModel!.isEmpty) {
      hasReachedMax = true;
      return;
    }
    hasReachedMax = false;
  }

  ListPost.exception(super.exception)
      : hasReachedMax = false,
        super.exception();

  static ListPost get getListPostForSuccess => ListPost.success([]);

  EnumListPostForPostsListWidget get getEnumListPostForPostsListWidget {
    if(exceptionController.enumWhatIsTheException == EnumWhatIsTheException.localException) {
      return EnumListPostForPostsListWidget.noInternetItLocalException;
    }
    if(exceptionController.enumWhatIsTheException == EnumWhatIsTheException.networkException) {
      return EnumListPostForPostsListWidget.serverNotWorkItNetworkException;
    }
    if(listModel!.isEmpty) {
      return EnumListPostForPostsListWidget.isEmptyList;
    }
    return EnumListPostForPostsListWidget.success;
  }

  bool? get getOneParametersNamedForPostsListWidget => hasReachedMax;
  int? get getTwoParametersNamedForPostsListWidget {
    if(hasReachedMax ?? true) {
      return listModel!.length;
    }
    return listModel!.length + 1;
  }

  set setOneParametersNamedForPostsListWidget(
      ListPost<T> listPost)
  {
    exceptionController = listPost.exceptionController;
    hasReachedMax = listPost.hasReachedMax;
    if(!(hasReachedMax ?? true)) {
      insertListToListModel(listPost.listModel!);
      return;
    }
  }

  set setTwoParametersNamedForPostsListWidget(
      ListPost<T> listPost)
  {
    exceptionController = listPost.exceptionController;
    hasReachedMax = listPost.hasReachedMax;
  }

  bool isOneParametersNamedForPostsListWidget(
      int index)
  {
    return index >= listModel!.length;
  }
}