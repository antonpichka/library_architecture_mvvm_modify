import 'package:library_arch_mvvm_modify_infinite_list/model/postForInfiniteList/PostForInfiniteList.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postForInfiniteListViewModel/PostForInfiniteListViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelNamedViewModel/postJsonPlaceholderDatabaseViewModel/PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/int_type_parameter.dart';

class ListOfViewModelForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex =
  PostJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex();
  final PostForInfiniteListViewModelUsingGetNP _postForInfiniteListViewModelUsingGetNP =
  PostForInfiniteListViewModelUsingGetNP();

  @override
  void dispose() {
    _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.dispose();
  }

  Future<void> getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPostAndInGeneralOneTask(
      {Function(PostForInfiniteList postForInfiniteList) functionForSuccessOrException})
  async {
    // 1
    var resultOne = await _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex
        .getListPostFromJsonPlaceholderDatabaseParameterStartIndexAndSetListPost(IntTypeParameter(0));
    if(resultOne.isExceptionResponse()) {
      _postForInfiniteListViewModelUsingGetNP
          .getPostForInfiniteListUsingGetNP
          .setFromBaseExceptionParameterEnumWhatIsTheException = resultOne.getException;
      functionForSuccessOrException(_postForInfiniteListViewModelUsingGetNP.getPostForInfiniteListUsingGetNP);
      return;
    }
    _postForInfiniteListViewModelUsingGetNP
        .getPostForInfiniteListUsingGetNP
        .setParameterListPost = _postJsonPlaceholderDatabaseViewModelUsingGetListParameterStartIndex.getListPostUsingGetListParameterStartIndex;
    functionForSuccessOrException(_postForInfiniteListViewModelUsingGetNP.getPostForInfiniteListUsingGetNP);
    return;
  }
}