import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteListWithoutDatabase/PostForInfiniteListWithoutDatabase.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/boolWithoutDatabaseViewModel/BoolWithoutDatabaseViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postForInfiniteListWithoutDatabaseViewModel/PostForInfiniteListWithoutDatabaseViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postJsonPlaceholderDatabaseViewModel/PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/int_type_parameter.dart';

class ListOfViewModelForPostsListWidgetForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex =
  PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex();
  final PostForInfiniteListWithoutDatabaseViewModelUsingGetNP _postForInfiniteListWithoutDatabaseViewModelUsingGetNP =
  PostForInfiniteListWithoutDatabaseViewModelUsingGetNP();
  final BoolWithoutDatabaseViewModelUsingGetNPForAntiSpam _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam =
  BoolWithoutDatabaseViewModelUsingGetNPForAntiSpam();

  @override
  void dispose() {
    _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.dispose();
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP.dispose();
    _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam.dispose();
  }

  Stream<PostForInfiniteListWithoutDatabase> get getStreamPostForInfiniteListWithoutDatabaseUsingGetNP {
    return _postForInfiniteListWithoutDatabaseViewModelUsingGetNP.getStreamPostForInfiniteListWithoutDatabaseUsingGetNP;
  }

  void setPostForInfiniteListWithoutDatabaseUsingGetNPAndCloneAndInGeneralZeroTask(
      PostForInfiniteListWithoutDatabase postForInfiniteList)
  {
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .setPostForInfiniteListWithoutDatabaseUsingGetNPAndClone(postForInfiniteList);
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .notifyStreamPostForInfiniteListWithoutDatabaseUsingGetNP();
    return;
  }

  Future<void> getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostJsonPlaceholderDatabaseAndInGeneralOneTask()
  async {
    await Future.delayed(Duration(milliseconds: 1000));
    if(_boolWithoutDatabaseViewModelUsingGetNPForAntiSpam
        .getBoolWithoutDatabaseUsingGetNPForAntiSpam
        .isField)
    {
      return;
    }
    if(_postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .getPostForInfiniteListWithoutDatabaseUsingGetNP
        .hasReachedMax)
    {
      return;
    }
    _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam
        .getBoolWithoutDatabaseUsingGetNPForAntiSpam
        .isField = true;
    // 1
    var resultOne = await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostJsonPlaceholderDatabase(IntTypeParameter(_postForInfiniteListWithoutDatabaseViewModelUsingGetNP.getPostForInfiniteListWithoutDatabaseUsingGetNP.listPostJsonPlaceholderDatabase.length));
    if(resultOne.isExceptionResponse()) {
      _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam
          .getBoolWithoutDatabaseUsingGetNPForAntiSpam
          .isField = false;
      _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
          .getPostForInfiniteListWithoutDatabaseUsingGetNP
          .setFromBaseExceptionParameterEnumWhatIsTheException = resultOne.getException;
      return;
    }
    if(_postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostJsonPlaceholderDatabaseUsingGetListParameterStartIndex
        .isEmpty)
    {
      _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam
          .getBoolWithoutDatabaseUsingGetNPForAntiSpam
          .isField = false;
      _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
          .getPostForInfiniteListWithoutDatabaseUsingGetNP
          .setParameterHasReachedMax = true;
      _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
          .notifyStreamPostForInfiniteListWithoutDatabaseUsingGetNP();
      return;
    }
    _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam
        .getBoolWithoutDatabaseUsingGetNPForAntiSpam
        .isField = false;
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .getPostForInfiniteListWithoutDatabaseUsingGetNP
        .listPostJsonPlaceholderDatabase
        .addAll(_postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.getListPostJsonPlaceholderDatabaseUsingGetListParameterStartIndex);
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .notifyStreamPostForInfiniteListWithoutDatabaseUsingGetNP();
    return;
  }

  Future<void> getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostJsonPlaceholderDatabaseAndInGeneralOneTaskExceptionItInitMethod()
  async {
    // 1
    var resultOne = await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostJsonPlaceholderDatabase(IntTypeParameter(0));
    if(resultOne.isExceptionResponse()) {
      _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
          .getPostForInfiniteListWithoutDatabaseUsingGetNP
          .setFromBaseExceptionParameterEnumWhatIsTheException = resultOne.getException;
      return;
    }
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .getPostForInfiniteListWithoutDatabaseUsingGetNP
        .setParameterListPostJsonPlaceholderDatabase = _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.getListPostJsonPlaceholderDatabaseUsingGetListParameterStartIndex;
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .notifyStreamPostForInfiniteListWithoutDatabaseUsingGetNP();
    return;
  }
}