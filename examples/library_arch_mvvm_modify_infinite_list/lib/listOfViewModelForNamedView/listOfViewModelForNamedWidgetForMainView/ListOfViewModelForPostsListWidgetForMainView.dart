import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteListWithoutLibrary/PostForInfiniteListWithoutLibrary.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/boolWithoutLibraryViewModel/BoolWithoutLibraryViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postForInfiniteListWithoutLibraryViewModel/PostForInfiniteListWithoutLibraryViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postJsonPlaceholderViewModel/PostJsonPlaceholderViewModelUsingGetListParameterIntForStartIndex.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/int_type_parameter.dart';

class ListOfViewModelForPostsListWidgetForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final PostJsonPlaceholderViewModelUsingGetListParameterIntForStartIndex _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex =
  PostJsonPlaceholderViewModelUsingGetListParameterIntForStartIndex();
  final PostForInfiniteListWithoutLibraryViewModelUsingGetNP _postForInfiniteListWithoutDatabaseViewModelUsingGetNP =
  PostForInfiniteListWithoutLibraryViewModelUsingGetNP();
  final BoolWithoutLibraryViewModelUsingGetNPForAntiSpam _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam =
  BoolWithoutLibraryViewModelUsingGetNPForAntiSpam();

  @override
  void dispose() {
    _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.dispose();
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP.dispose();
    _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam.dispose();
  }

  Stream<PostForInfiniteListWithoutLibrary> get getStreamPostForInfiniteListWithoutLibraryUsingGetNP {
    return _postForInfiniteListWithoutDatabaseViewModelUsingGetNP.getStreamPostForInfiniteListWithoutLibraryUsingGetNP;
  }

  void setPostForInfiniteListWithoutLibraryUsingGetNPAndCloneAndInGeneralZeroTask(
      PostForInfiniteListWithoutLibrary postForInfiniteList)
  {
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .setPostForInfiniteListWithoutLibraryUsingGetNPAndClone(postForInfiniteList);
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .notifyStreamPostForInfiniteListWithoutLibraryUsingGetNP();
    return;
  }

  Future<void> getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholderAndInGeneralOneTask()
  async {
    await Future.delayed(Duration(milliseconds: 1000));
    if(_boolWithoutDatabaseViewModelUsingGetNPForAntiSpam
        .getBoolWithoutLibraryUsingGetNPForAntiSpam
        .isField)
    {
      return;
    }
    if(_postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .getPostForInfiniteListWithoutLibraryUsingGetNP
        .hasReachedMax)
    {
      return;
    }
    _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam
        .getBoolWithoutLibraryUsingGetNPForAntiSpam
        .isField = true;
    // 1
    var resultOne = await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholder(IntTypeParameter(_postForInfiniteListWithoutDatabaseViewModelUsingGetNP.getPostForInfiniteListWithoutLibraryUsingGetNP.listPostJsonPlaceholder.length));
    if(resultOne.isExceptionResponse()) {
      _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam
          .getBoolWithoutLibraryUsingGetNPForAntiSpam
          .isField = false;
      _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
          .getPostForInfiniteListWithoutLibraryUsingGetNP
          .setFromBaseExceptionParameterEnumWhatIsTheException = resultOne.getException;
      return;
    }
    if(_postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostJsonPlaceholderUsingGetListParameterIntForStartIndex
        .isEmpty)
    {
      _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam
          .getBoolWithoutLibraryUsingGetNPForAntiSpam
          .isField = false;
      _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
          .getPostForInfiniteListWithoutLibraryUsingGetNP
          .setParameterHasReachedMax = true;
      _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
          .notifyStreamPostForInfiniteListWithoutLibraryUsingGetNP();
      return;
    }
    _boolWithoutDatabaseViewModelUsingGetNPForAntiSpam
        .getBoolWithoutLibraryUsingGetNPForAntiSpam
        .isField = false;
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .getPostForInfiniteListWithoutLibraryUsingGetNP
        .listPostJsonPlaceholder
        .addAll(_postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.getListPostJsonPlaceholderUsingGetListParameterIntForStartIndex);
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .notifyStreamPostForInfiniteListWithoutLibraryUsingGetNP();
    return;
  }

  Future<void> getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholderAndInGeneralOneTaskExceptionItInitMethod()
  async {
    // 1
    var resultOne = await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderParameterIntAndSetListPostJsonPlaceholder(IntTypeParameter(0));
    if(resultOne.isExceptionResponse()) {
      _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
          .getPostForInfiniteListWithoutLibraryUsingGetNP
          .setFromBaseExceptionParameterEnumWhatIsTheException = resultOne.getException;
      return;
    }
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .getPostForInfiniteListWithoutLibraryUsingGetNP
        .setParameterListPostJsonPlaceholder = _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.getListPostJsonPlaceholderUsingGetListParameterIntForStartIndex;
    _postForInfiniteListWithoutDatabaseViewModelUsingGetNP
        .notifyStreamPostForInfiniteListWithoutLibraryUsingGetNP();
    return;
  }
}