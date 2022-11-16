import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/utility/enum_what_is_the_exception.dart';

enum EnumStatusListPostForPostsListWidgetForMainView {
  success,
  isEmptyListPostJsonPlaceholder,
  noInternetItLocalException,
  serverNotWorkItNetworkException
}

class ListPost
    extends BaseListModel<Post>
{
  bool hasReachedMax;

  ListPost.success(List<Post> listModel) : super.success(listModel) {
    if(listModel.isEmpty) {
      hasReachedMax = true;
      return;
    }
    hasReachedMax = false;
  }

  ListPost.exception(BaseException exception) : super.exception(exception) {
    hasReachedMax = false;
  }

  EnumStatusListPostForPostsListWidgetForMainView get getEnumStatusListPostForPostsListWidgetForMainView {
    if(exceptionControllerForModel.enumWhatIsTheException == EnumWhatIsTheException.localException) {
      return EnumStatusListPostForPostsListWidgetForMainView.noInternetItLocalException;
    }
    if(exceptionControllerForModel.enumWhatIsTheException == EnumWhatIsTheException.networkException) {
      return EnumStatusListPostForPostsListWidgetForMainView.serverNotWorkItNetworkException;
    }
    if(listModel.isEmpty) {
      return EnumStatusListPostForPostsListWidgetForMainView.isEmptyListPostJsonPlaceholder;
    }
    return EnumStatusListPostForPostsListWidgetForMainView.success;
  }

  int get getParameterLengthByListPost {
    if(hasReachedMax) {
      return listModel.length;
    }
    return listModel.length + 1;
  }

  set setParameterHasReachedMax(
      bool hasReachedMax)
  {
    this.hasReachedMax = hasReachedMax;
  }

  void insertListPostToListAndSetFromListPostParametersHasReachedMaxAndExceptionControllerForModel(
      ListPost listPost)
  {
    setParameterExceptionControllerForModel = listPost.exceptionControllerForModel;
    setParameterHasReachedMax = listPost.hasReachedMax;
    if(hasNotReachedMax()) {
      insertListPostToList(listPost.listModel);
      return;
    }
  }

  void setFromListPostParametersExceptionAndHasReachedMaxAndExceptionControllerForModel(
      ListPost listPost)
  {
    setParameterExceptionControllerForModel = listPost.exceptionControllerForModel;
    setParameterHasReachedMax = listPost.hasReachedMax;
  }

  bool insertListPostToList(
      List<Post> listPost)
  {
    return insertListModelToList(this,listPost);
  }

  bool isFromIndexMoreOrEqualParameterLengthByListPost(
      int index)
  {
    return index >= listModel.length;
  }

  bool hasNotReachedMax() {
    return !hasReachedMax;
  }
}