import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/EnumWhatIsTheException.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/base_list_model.dart';

enum EnumStatusListPost {
  success,
  isEmptyListPostJsonPlaceholder,
  noInternetItLocalException,
  serverNotWorkItNetworkException
}

class ListPost
    extends BaseListModel<Post>
{
  bool hasReachedMax;
  EnumWhatIsTheException enumWhatIsTheException;

  ListPost.success(List<Post> listModel) : super.success(listModel) {
    enumWhatIsTheException = EnumWhatIsTheException.noException;
    if(listModel.isEmpty) {
      hasReachedMax = true;
      return;
    }
    hasReachedMax = false;
  }

  ListPost.exception(BaseException exception) : super.exception(exception) {
    hasReachedMax = false;
    if(exception is LocalException) {
      enumWhatIsTheException = EnumWhatIsTheException.LocalException;
      return;
    }
    enumWhatIsTheException = EnumWhatIsTheException.NetworkException;
  }

  EnumStatusListPost get getEnumStatusListPost {
    if(enumWhatIsTheException == EnumWhatIsTheException.LocalException) {
      return EnumStatusListPost.noInternetItLocalException;
    }
    if(enumWhatIsTheException == EnumWhatIsTheException.NetworkException) {
      return EnumStatusListPost.serverNotWorkItNetworkException;
    }
    if(listModel.isEmpty) {
      return EnumStatusListPost.isEmptyListPostJsonPlaceholder;
    }
    return EnumStatusListPost.success;
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

  set setParameterEnumWhatIsTheException(
      EnumWhatIsTheException enumWhatIsTheException)
  {
    this.enumWhatIsTheException = enumWhatIsTheException;
  }

  void insertListPostToListAndSetFromListPostParametersHasReachedMaxAndEnumWhatIsTheException(
      ListPost listPost)
  {
    hasReachedMax = listPost.hasReachedMax;
    enumWhatIsTheException = listPost.enumWhatIsTheException;
    if(hasNotReachedMax()) {
      insertListPostToList(listPost.listModel);
      return;
    }
  }

  void setFromListPostParametersExceptionAndHasReachedMaxAndEnumWhatIsTheException(
      ListPost listPost)
  {
    exception = listPost.exception;
    hasReachedMax = listPost.hasReachedMax;
    enumWhatIsTheException = listPost.enumWhatIsTheException;
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

  @override
  String toString() {
    return "${listModel.toString()} : $hasReachedMax : ${enumWhatIsTheException.name}";
  }
}