import 'package:library_arch_mvvm_modify_infinite_list/model/post/Post.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/EnumWhatIsTheException.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

enum EnumPostForInfiniteListItStatus {
  success,
  isEmptyListOfPost,
  noInternetItLocalException,
  serverNotWorkItNetworkException
}

// ignore: must_be_immutable
class PostForInfiniteList
    extends BaseModel
{
  List<Post> listPost;
  bool hasReachedMax;
  EnumWhatIsTheException enumWhatIsTheException;

  PostForInfiniteList(
      this.listPost,
      this.hasReachedMax,
      this.enumWhatIsTheException) : super("");

  EnumPostForInfiniteListItStatus get getEnumPostForInfiniteListItStatus {
    if(enumWhatIsTheException == EnumWhatIsTheException.LocalException) {
      return EnumPostForInfiniteListItStatus.noInternetItLocalException;
    }
    if(enumWhatIsTheException == EnumWhatIsTheException.NetworkException) {
      return EnumPostForInfiniteListItStatus.serverNotWorkItNetworkException;
    }
    if(listPost.isEmpty) {
      return EnumPostForInfiniteListItStatus.isEmptyListOfPost;
    }
    return EnumPostForInfiniteListItStatus.success;
  }

  int get getParameterLengthByListPost {
    if(hasReachedMax) {
      return listPost.length;
    }
    return listPost.length + 1;
  }

  set setParameterListPost(
      List<Post> listPost)
  {
    this.listPost = listPost;
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

  set setFromBaseExceptionParameterEnumWhatIsTheException(
      BaseException baseException)
  {
    if(baseException is LocalException) {
      enumWhatIsTheException = EnumWhatIsTheException.LocalException;
      return;
    }
    enumWhatIsTheException = EnumWhatIsTheException.NetworkException;
  }

  bool isFromIndexMoreOrEqualParameterLengthByListPost(
      int index)
  {
    return index >= listPost.length;
  }

  @override
  String toString() {
    return "${listPost.toString()} : $hasReachedMax : ${enumWhatIsTheException.name}";
  }

  @override
  List<Object> get props => [uniqueId,listPost,hasReachedMax,enumWhatIsTheException];

  static PostForInfiniteList get getDefaultPostForInfiniteList => PostForInfiniteList(List.empty(), false, EnumWhatIsTheException.noException);
}