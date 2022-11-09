import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteListWithoutDatabase.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/boolViewModel/BoolWithoutDatabaseViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postForInfiniteListViewModel/PostForInfiniteListWithoutDatabaseViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postJsonPlaceholderDatabaseViewModel/PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/int_type_parameter.dart';

class ListOfViewModelForPostsListWidgetForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex =
  PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex();
  final PostForInfiniteListViewModelUsingGetNP _postForInfiniteListViewModelUsingGetNP =
  PostForInfiniteListViewModelUsingGetNP();
  final BoolViewModelUsingGetNPForAntiSpam _boolViewModelUsingGetNPForAntiSpam =
  BoolViewModelUsingGetNPForAntiSpam();

  @override
  void dispose() {
    _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.dispose();
    _postForInfiniteListViewModelUsingGetNP.dispose();
    _boolViewModelUsingGetNPForAntiSpam.dispose();
  }

  Stream<PostForInfiniteList> get getStreamPostForInfiniteListUsingGetNP {
    return _postForInfiniteListViewModelUsingGetNP.getStreamPostForInfiniteListWithoutDatabaseUsingGetNP;
  }

  void setPostForInfiniteListUsingGetNPAndCloneAndInGeneralZeroTask(
      PostForInfiniteList postForInfiniteList)
  {
    _postForInfiniteListViewModelUsingGetNP
        .setPostForInfiniteListWithoutDatabaseUsingGetNPAndClone(postForInfiniteList);
    _postForInfiniteListViewModelUsingGetNP
        .notifyStreamPostForInfiniteListWithoutDatabaseUsingGetNP();
    return;
  }

  Future<void> getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostAndInGeneralOneTask()
  async {
    await Future.delayed(Duration(milliseconds: 1000));
    if(_boolViewModelUsingGetNPForAntiSpam
        .getBoolWithoutDatabaseUsingGetNPForAntiSpam
        .isField)
    {
      return;
    }
    if(_postForInfiniteListViewModelUsingGetNP
        .getPostForInfiniteListWithoutDatabaseUsingGetNP
        .hasReachedMax)
    {
      return;
    }
    _boolViewModelUsingGetNPForAntiSpam
        .getBoolWithoutDatabaseUsingGetNPForAntiSpam
        .isField = true;
    // 1
    var resultOne = await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostJsonPlaceholderDatabase(IntTypeParameter(_postForInfiniteListViewModelUsingGetNP.getPostForInfiniteListWithoutDatabaseUsingGetNP.listPostJsonPlaceholderDatabase.length));
    if(resultOne.isExceptionResponse()) {
      _boolViewModelUsingGetNPForAntiSpam
          .getBoolWithoutDatabaseUsingGetNPForAntiSpam
          .isField = false;
      _postForInfiniteListViewModelUsingGetNP
          .getPostForInfiniteListWithoutDatabaseUsingGetNP
          .setFromBaseExceptionParameterEnumWhatIsTheException = resultOne.getException;
      return;
    }
    if(_postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostJsonPlaceholderDatabaseUsingGetListParameterStartIndex
        .isEmpty)
    {
      _boolViewModelUsingGetNPForAntiSpam
          .getBoolWithoutDatabaseUsingGetNPForAntiSpam
          .isField = false;
      _postForInfiniteListViewModelUsingGetNP
          .getPostForInfiniteListWithoutDatabaseUsingGetNP
          .setParameterHasReachedMax = true;
      _postForInfiniteListViewModelUsingGetNP
          .notifyStreamPostForInfiniteListWithoutDatabaseUsingGetNP();
      return;
    }
    _boolViewModelUsingGetNPForAntiSpam
        .getBoolWithoutDatabaseUsingGetNPForAntiSpam
        .isField = false;
    _postForInfiniteListViewModelUsingGetNP
        .getPostForInfiniteListWithoutDatabaseUsingGetNP
        .listPostJsonPlaceholderDatabase
        .addAll(_postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.getListPostJsonPlaceholderDatabaseUsingGetListParameterStartIndex);
    _postForInfiniteListViewModelUsingGetNP
        .notifyStreamPostForInfiniteListWithoutDatabaseUsingGetNP();
    return;
  }

  Future<void> getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostAndInGeneralOneTaskExceptionItInitMethod()
  async {
    // 1
    var resultOne = await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostJsonPlaceholderDatabase(IntTypeParameter(0));
    if(resultOne.isExceptionResponse()) {
      _postForInfiniteListViewModelUsingGetNP
          .getPostForInfiniteListWithoutDatabaseUsingGetNP
          .setFromBaseExceptionParameterEnumWhatIsTheException = resultOne.getException;
      return;
    }
    _postForInfiniteListViewModelUsingGetNP
        .getPostForInfiniteListWithoutDatabaseUsingGetNP
        .setParameterListPostJsonPlaceholderDatabase = _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.getListPostJsonPlaceholderDatabaseUsingGetListParameterStartIndex;
    _postForInfiniteListViewModelUsingGetNP
        .notifyStreamPostForInfiniteListWithoutDatabaseUsingGetNP();
    return;
  }
}