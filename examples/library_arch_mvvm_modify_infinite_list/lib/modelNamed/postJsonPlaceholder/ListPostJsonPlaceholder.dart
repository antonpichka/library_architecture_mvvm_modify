import 'package:library_arch_mvvm_modify_infinite_list/modelNamed/postJsonPlaceholder/PostJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/EnumWhatIsTheException.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/base_list_model_named.dart';

enum EnumListPostJsonPlaceholder {
  success,
  isEmptyListPostJsonPlaceholder,
  noInternetItLocalException,
  serverNotWorkItNetworkException
}

class ListPostJsonPlaceholder
    extends BaseListModelNamed<PostJsonPlaceholder>
{
  bool hasReachedMax;
  EnumWhatIsTheException enumWhatIsTheException;

  ListPostJsonPlaceholder.success(List<PostJsonPlaceholder> listModelNamed) : super.success(listModelNamed) {
    enumWhatIsTheException = EnumWhatIsTheException.noException;
    if(listModelNamed.isEmpty) {
      hasReachedMax = true;
      return;
    }
    hasReachedMax = false;
  }

  ListPostJsonPlaceholder.exception(BaseException exception) : super.exception(exception) {
    hasReachedMax = false;
    if(exception is LocalException) {
      enumWhatIsTheException = EnumWhatIsTheException.LocalException;
      return;
    }
    enumWhatIsTheException = EnumWhatIsTheException.NetworkException;
  }

  EnumListPostJsonPlaceholder get getEnumListPostJsonPlaceholder {
    if(enumWhatIsTheException == EnumWhatIsTheException.LocalException) {
      return EnumListPostJsonPlaceholder.noInternetItLocalException;
    }
    if(enumWhatIsTheException == EnumWhatIsTheException.NetworkException) {
      return EnumListPostJsonPlaceholder.serverNotWorkItNetworkException;
    }
    if(listModelNamed.isEmpty) {
      return EnumListPostJsonPlaceholder.isEmptyListPostJsonPlaceholder;
    }
    return EnumListPostJsonPlaceholder.success;
  }

  int get getParameterLengthByListPostJsonPlaceholder {
    if(hasReachedMax) {
      return listModelNamed.length;
    }
    return listModelNamed.length + 1;
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

  void insertListPostJsonPlaceholderToListAndSetFromListPostJsonPlaceholderParametersHasReachedMaxAndEnumWhatIsTheException(
      ListPostJsonPlaceholder listPostJsonPlaceholder)
  {
    hasReachedMax = listPostJsonPlaceholder.hasReachedMax;
    enumWhatIsTheException = listPostJsonPlaceholder.enumWhatIsTheException;
    if(hasNotReachedMax()) {
      insertListPostJsonPlaceholderToList(listPostJsonPlaceholder.listModelNamed);
      return;
    }
  }

  void setFromListPostJsonPlaceholderParametersExceptionAndHasReachedMaxAndEnumWhatIsTheException(
      ListPostJsonPlaceholder listPostJsonPlaceholder)
  {
    exception = listPostJsonPlaceholder.exception;
    hasReachedMax = listPostJsonPlaceholder.hasReachedMax;
    enumWhatIsTheException = listPostJsonPlaceholder.enumWhatIsTheException;
  }

  bool insertListPostJsonPlaceholderToList(
      List<PostJsonPlaceholder> listPostJsonPlaceholder)
  {
    return super.insertListModelNamedToList(this,listPostJsonPlaceholder);
  }

  bool isFromIndexMoreOrEqualParameterLengthByListPostJsonPlaceholder(
      int index)
  {
    return index >= listModelNamed.length;
  }

  bool hasNotReachedMax() {
    return !hasReachedMax;
  }

  @override
  String toString() {
    return "${listModelNamed.toString()} : $hasReachedMax : ${enumWhatIsTheException.name}";
  }
}