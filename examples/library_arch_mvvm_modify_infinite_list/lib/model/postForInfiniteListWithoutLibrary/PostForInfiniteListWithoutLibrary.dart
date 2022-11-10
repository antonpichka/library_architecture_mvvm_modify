import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholder/PostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/EnumWhatIsTheException.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named.dart';

enum EnumPostForInfiniteListWithoutLibrary {
  success,
  isEmptyListOfPost,
  noInternetItLocalException,
  serverNotWorkItNetworkException
}

class PostForInfiniteListWithoutLibrary
    extends BaseModelNamed
{
  List<PostJsonPlaceholder> listPostJsonPlaceholder;
  bool hasReachedMax;
  EnumWhatIsTheException enumWhatIsTheException;

  PostForInfiniteListWithoutLibrary(
      this.listPostJsonPlaceholder,
      this.hasReachedMax,
      this.enumWhatIsTheException) : super("");

  static PostForInfiniteListWithoutLibrary get getPostForInfiniteListWithoutLibrary => PostForInfiniteListWithoutLibrary(List.empty(), false, EnumWhatIsTheException.noException);

  EnumPostForInfiniteListWithoutLibrary get getEnumPostForInfiniteListWithoutLibrary {
    if(enumWhatIsTheException == EnumWhatIsTheException.LocalException) {
      return EnumPostForInfiniteListWithoutLibrary.noInternetItLocalException;
    }
    if(enumWhatIsTheException == EnumWhatIsTheException.NetworkException) {
      return EnumPostForInfiniteListWithoutLibrary.serverNotWorkItNetworkException;
    }
    if(listPostJsonPlaceholder.isEmpty) {
      return EnumPostForInfiniteListWithoutLibrary.isEmptyListOfPost;
    }
    return EnumPostForInfiniteListWithoutLibrary.success;
  }

  int get getParameterLengthByListPostJsonPlaceholder {
    if(hasReachedMax) {
      return listPostJsonPlaceholder.length;
    }
    return listPostJsonPlaceholder.length + 1;
  }

  set setParameterListPostJsonPlaceholder(
      List<PostJsonPlaceholder> listPostJsonPlaceholder)
  {
    this.listPostJsonPlaceholder = listPostJsonPlaceholder;
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

  bool isFromIndexMoreOrEqualParameterLengthByListPostJsonPlaceholder(
      int index)
  {
    return index >= listPostJsonPlaceholder.length;
  }

  @override
  String toString() {
    return "${listPostJsonPlaceholder.toString()} : $hasReachedMax : ${enumWhatIsTheException.name}";
  }
}