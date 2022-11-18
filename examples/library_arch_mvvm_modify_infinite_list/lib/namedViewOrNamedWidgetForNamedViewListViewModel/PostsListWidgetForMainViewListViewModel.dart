import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPost.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQJsonPlaceholderServiceViewModel/PostQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/namedService/JsonPlaceholderService.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_or_named_widget_for_named_view_list_view_model/base_named_view_or_named_widget_for_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class PostsListWidgetForMainViewListViewModel
    extends BaseNamedViewOrNamedWidgetForNamedViewListViewModel
{
  final _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex =
  PostQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex(JsonPlaceholderService());
  final _boolQNoServiceViewModelUsingGetNPForAntiSpam =
  BoolQNoServiceViewModelUsingGetNPForAntiSpam();

  @override
  void dispose() {
    _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex.dispose();
    _boolQNoServiceViewModelUsingGetNPForAntiSpam.dispose();
  }

  Stream<ListPost> get getStreamListPostUsingGetListParameterIntForStartIndex {
    return _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex.getStreamListPostUsingGetListParameterIntForStartIndex;
  }

  Future<void> getListPostFromJsonPlaceholderServiceParameterIntAndInGeneralOneTask()
  async {
    await Future.delayed(Duration(milliseconds: 1000));
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

  Future<void> getListPostFromJsonPlaceholderServiceParameterIntAndSetListPostAndInGeneralOneTask()
  async {
    // 1
    await _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex
        .getListPostFromJsonPlaceholderServiceParameterIntAndSetListPost(IntTypeParameter(0));
    _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex
        .notifyStreamListPostUsingGetListParameterIntForStartIndex();
    return;
  }
}