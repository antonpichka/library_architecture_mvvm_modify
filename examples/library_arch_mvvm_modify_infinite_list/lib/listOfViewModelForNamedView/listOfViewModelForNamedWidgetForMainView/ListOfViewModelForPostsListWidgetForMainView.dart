import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteList.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/boolViewModel/BoolViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postForInfiniteListViewModel/PostForInfiniteListViewModelUsingGetNP.dart';
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
    return _postForInfiniteListViewModelUsingGetNP.getStreamPostForInfiniteListUsingGetNP;
  }

  void setPostForInfiniteListUsingGetNPAndCloneAndInGeneralZeroTask(
      PostForInfiniteList postForInfiniteList)
  {
    _postForInfiniteListViewModelUsingGetNP
        .setPostForInfiniteListUsingGetNPAndClone(postForInfiniteList);
    _postForInfiniteListViewModelUsingGetNP
        .notifyStreamPostForInfiniteListUsingGetNP();
    return;
  }

  Future<void> getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostAndInGeneralOneTask()
  async {
    await Future.delayed(Duration(milliseconds: 1000));
    if(_boolViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        .isField)
    {
      return;
    }
    if(_postForInfiniteListViewModelUsingGetNP
        .getPostForInfiniteListUsingGetNP
        .hasReachedMax)
    {
      return;
    }
    _boolViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        .isField = true;
    // 1
    var resultOne = await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPost(IntTypeParameter(_postForInfiniteListViewModelUsingGetNP.getPostForInfiniteListUsingGetNP.listPost.length));
    if(resultOne.isExceptionResponse()) {
      _boolViewModelUsingGetNPForAntiSpam
          .getBoolUsingGetNPForAntiSpam
          .isField = false;
      _postForInfiniteListViewModelUsingGetNP
          .getPostForInfiniteListUsingGetNP
          .setFromBaseExceptionParameterEnumWhatIsTheException = resultOne.getException;
      return;
    }
    if(_postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostUsingGetListParameterStartIndex
        .isEmpty)
    {
      _boolViewModelUsingGetNPForAntiSpam
          .getBoolUsingGetNPForAntiSpam
          .isField = false;
      _postForInfiniteListViewModelUsingGetNP
          .getPostForInfiniteListUsingGetNP
          .setParameterHasReachedMax = true;
      _postForInfiniteListViewModelUsingGetNP
          .notifyStreamPostForInfiniteListUsingGetNP();
      return;
    }
    _boolViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        .isField = false;
    _postForInfiniteListViewModelUsingGetNP
        .getPostForInfiniteListUsingGetNP
        .listPost
        .addAll(_postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.getListPostUsingGetListParameterStartIndex);
    _postForInfiniteListViewModelUsingGetNP
        .notifyStreamPostForInfiniteListUsingGetNP();
    return;
  }

  Future<void> getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostAndInGeneralOneTaskExceptionItInitMethod()
  async {
    // 1
    var resultOne = await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPost(IntTypeParameter(0));
    if(resultOne.isExceptionResponse()) {
      _postForInfiniteListViewModelUsingGetNP
          .getPostForInfiniteListUsingGetNP
          .setFromBaseExceptionParameterEnumWhatIsTheException = resultOne.getException;
      return;
    }
    _postForInfiniteListViewModelUsingGetNP
        .getPostForInfiniteListUsingGetNP
        .setParameterListPost = _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.getListPostUsingGetListParameterStartIndex;
    _postForInfiniteListViewModelUsingGetNP
        .notifyStreamPostForInfiniteListUsingGetNP();
    return;
  }
}