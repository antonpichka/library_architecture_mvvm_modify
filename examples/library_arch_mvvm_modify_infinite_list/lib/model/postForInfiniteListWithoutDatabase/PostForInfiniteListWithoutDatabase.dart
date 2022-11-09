import 'package:library_arch_mvvm_modify_infinite_list/model/postJsonPlaceholderDatabase/PostJsonPlaceholderDatabase.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/EnumWhatIsTheException.dart';
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/base_model_named_database.dart';

enum EnumPostForInfiniteListWithoutDatabaseItStatus {
  success,
  isEmptyListOfPost,
  noInternetItLocalException,
  serverNotWorkItNetworkException
}

class PostForInfiniteListWithoutDatabase
    extends BaseModelNamedDatabase
{
  List<PostJsonPlaceholderDatabase> listPostJsonPlaceholderDatabase;
  bool hasReachedMax;
  EnumWhatIsTheException enumWhatIsTheException;

  PostForInfiniteListWithoutDatabase(
      this.listPostJsonPlaceholderDatabase,
      this.hasReachedMax,
      this.enumWhatIsTheException) : super("");

  static PostForInfiniteListWithoutDatabase get getPostForInfiniteListWithoutDatabase => PostForInfiniteListWithoutDatabase(List.empty(), false, EnumWhatIsTheException.noException);

  EnumPostForInfiniteListWithoutDatabaseItStatus get getEnumPostForInfiniteListWithoutDatabaseItStatus {
    if(enumWhatIsTheException == EnumWhatIsTheException.LocalException) {
      return EnumPostForInfiniteListWithoutDatabaseItStatus.noInternetItLocalException;
    }
    if(enumWhatIsTheException == EnumWhatIsTheException.NetworkException) {
      return EnumPostForInfiniteListWithoutDatabaseItStatus.serverNotWorkItNetworkException;
    }
    if(listPostJsonPlaceholderDatabase.isEmpty) {
      return EnumPostForInfiniteListWithoutDatabaseItStatus.isEmptyListOfPost;
    }
    return EnumPostForInfiniteListWithoutDatabaseItStatus.success;
  }

  int get getParameterLengthByListPostJsonPlaceholderDatabase {
    if(hasReachedMax) {
      return listPostJsonPlaceholderDatabase.length;
    }
    return listPostJsonPlaceholderDatabase.length + 1;
  }

  set setParameterListPostJsonPlaceholderDatabase(
      List<PostJsonPlaceholderDatabase> listPostJsonPlaceholderDatabase)
  {
    this.listPostJsonPlaceholderDatabase = listPostJsonPlaceholderDatabase;
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

  bool isFromIndexMoreOrEqualParameterLengthByListPostJsonPlaceholderDatabase(
      int index)
  {
    return index >= listPostJsonPlaceholderDatabase.length;
  }

  @override
  String toString() {
    return "${listPostJsonPlaceholderDatabase.toString()} : $hasReachedMax : ${enumWhatIsTheException.name}";
  }
}