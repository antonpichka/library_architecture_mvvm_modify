import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQJsonPlaceholderServiceViewModel/PostQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget {
  final PostQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex;
  final BoolQNoServiceViewModelUsingGetNPForAntiSpam _boolQNoServiceViewModelUsingGetNPForAntiSpam;

  PostQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget(
      this._postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex,
      this._boolQNoServiceViewModelUsingGetNPForAntiSpam);

  Stream<ListPost> get getStreamListPostUsingGetListParameterIntForStartIndex {
    return _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex.getStreamListPostUsingGetListParameterIntForStartIndex;
  }

  Future<void> getListPostFromJsonPlaceholderServiceParameterIntAndInGeneralOneTask()
  async {
    await Future.delayed(Duration(seconds: 1));
    if(_boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        .isField)
    {
      return;
    }
    if(_postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex
        .getListPostUsingGetListParameterIntForStartIndex
        .hasReachedMax)
    {
      return;
    }
    _boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        .isField = true;
    // 1
    ListPost listPost = await _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex
        .getListPostFromJsonPlaceholderServiceParameterInt(IntTypeParameter(_postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex.getListPostUsingGetListParameterIntForStartIndex.list.length));
    _boolQNoServiceViewModelUsingGetNPForAntiSpam
        .getBoolUsingGetNPForAntiSpam
        .isField = false;
    if(listPost
        .exceptionController
        .isNotNullParameterException())
    {
      _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex
          .getListPostUsingGetListParameterIntForStartIndex
          .setFromListPostParametersExceptionControllerAndHasReachedMax(listPost);
      _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex
          .notifyStreamListPostUsingGetListParameterIntForStartIndex();
      return;
    }
    _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex
        .getListPostUsingGetListParameterIntForStartIndex
        .insertListToListAndSetFromListPostParametersExceptionControllerAndHasReachedMax(listPost);
    _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex
        .notifyStreamListPostUsingGetListParameterIntForStartIndex();
    return;
  }
}