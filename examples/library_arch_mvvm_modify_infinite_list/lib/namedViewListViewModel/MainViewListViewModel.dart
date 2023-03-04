import 'package:library_arch_mvvm_modify_infinite_list/model/post/initializedStreamPost/InitializedStreamPostFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQNamedServiceViewModel/postQHttpClientServiceViewModel/PostFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder.dart';
import 'package:library_arch_mvvm_modify_infinite_list/modelQThereIsStateViewModel/postQThereIsStateViewModel/PostFirstBranchOneQThereIsStateViewModel.dart';
import 'package:library_arch_mvvm_modify_infinite_list/namedViewListViewModel/namedWidgetListViewModel/PostsListFirstBranchOneWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_bool.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/bool_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQNamedServiceViewModel
  final _postFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder =
      PostFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder();

  // ModelQThereIsStateViewModel
  final _boolQThereIsStateViewModelForAntiSpam =
      BoolQThereIsStateViewModel(InitializedStreamBool());
  final _postFirstBranchOneQThereIsStateViewModel =
      PostFirstBranchOneQThereIsStateViewModel(
          InitializedStreamPostFirstBranchOne());

  // NamedWidgetListViewModel
  late final PostsListFirstBranchOneWidgetListViewModel
      postsListFirstBranchOneWidgetListViewModel;

  MainViewListViewModel() {
    postsListFirstBranchOneWidgetListViewModel =
        PostsListFirstBranchOneWidgetListViewModel(
            _postFirstBranchOneQHttpClientServiceViewModelUsingGetListParameterIntForStartIndexFromJsonPlaceholder,
            _boolQThereIsStateViewModelForAntiSpam,
            _postFirstBranchOneQThereIsStateViewModel);
  }

  @override
  void dispose() {
    _boolQThereIsStateViewModelForAntiSpam.dispose();
    _postFirstBranchOneQThereIsStateViewModel.dispose();
  }
}
