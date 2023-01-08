import 'package:library_arch_mvvm_modify_infinite_list/model/post/ListPostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/PostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/initializedStreamPost/InitializedStreamPostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/postForNamed/ListPostFirstBranchOneForArrayListPostFirstBranchOneTIP.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/postForNamed/ListPostFirstBranchOneForLocalExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/postForNamed/ListPostFirstBranchOneForNetworkExceptionTIP.dart';
import 'package:library_arch_mvvm_modify_infinite_list/model/post/postForNamed/PostFirstBranchOneForMap.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQThereIsStateViewModel/boolQThereIsStateViewModel/BoolQThereIsStateViewModelForAntiSpam.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQThereIsStateViewModel/postQThereIsStateViewModel/PostQThereIsStateViewModelForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListFirstBranchOneWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_bool.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder =
  PostQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder<PostFirstBranchOne,ListPostFirstBranchOne<PostFirstBranchOne>>(
      PostFirstBranchOneForMap(),
      ListPostFirstBranchOneForArrayListPostFirstBranchOneTIP(),
      ListPostFirstBranchOneForNetworkExceptionTIP(),
      ListPostFirstBranchOneForLocalExceptionTIP());

  // ModelQThereIsStateViewModel
  final _boolQThereIsStateViewModelForAntiSpam =
  BoolQThereIsStateViewModelForAntiSpam<Bool,ListBool<Bool>>(
      InitializedStreamBool());
  final _postQThereIsStateViewModelForStartIndexFromJsonPlaceholder =
  PostQThereIsStateViewModelForStartIndexFromJsonPlaceholder<PostFirstBranchOne,ListPostFirstBranchOne<PostFirstBranchOne>>(
      InitializedStreamPostFirstBranchOne());

  // NamedWidgetListViewModel
  late final PostsListFirstBranchOneWidgetListViewModel postsListFirstBranchOneWidgetListViewModel;

  MainViewListViewModel() {
    postsListFirstBranchOneWidgetListViewModel = PostsListFirstBranchOneWidgetListViewModel(
        _postQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
        _boolQThereIsStateViewModelForAntiSpam,
        _postQThereIsStateViewModelForStartIndexFromJsonPlaceholder);
  }

  @override
  void dispose() {
    _boolQThereIsStateViewModelForAntiSpam.dispose();
    _postQThereIsStateViewModelForStartIndexFromJsonPlaceholder.dispose();
  }
}