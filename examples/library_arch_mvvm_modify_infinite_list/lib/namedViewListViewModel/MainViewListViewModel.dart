import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/boolQNoServiceViewModel/BoolQNoServiceViewModelUsingGetNPForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQJsonPlaceholderServiceViewModel/PostQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/modelQNamedServiceListViewModelForNamedWidget/PostQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget.dart';
import 'package:library_arch_mvvm_modify_infinite_list/utility/namedService/JsonPlaceholderService.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/int_type_parameter.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex =
  PostQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex(JsonPlaceholderService());
  final _boolQNoServiceViewModelUsingGetNPForAntiSpam =
  BoolQNoServiceViewModelUsingGetNPForAntiSpam();

  // ModelQNamedServiceListViewModelForNamedWidget
  PostQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget postQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget;

  MainViewListViewModel() {
    postQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget = PostQJsonPlaceholderServiceAndBoolQNoServiceListViewModelForPostsListWidget(_postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex, _boolQNoServiceViewModelUsingGetNPForAntiSpam);
  }

  @override
  void dispose() {
    _postQJsonPlaceholderServiceViewModelUsingGetListParameterIntForStartIndex.dispose();
    _boolQNoServiceViewModelUsingGetNPForAntiSpam.dispose();
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