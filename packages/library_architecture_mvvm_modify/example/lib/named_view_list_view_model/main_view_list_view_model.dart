import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/main_tab/i_initialized_stream_main_tab/initialized_stream_main_tab.dart';
import 'package:library_architecture_mvvm_modify_todo/model/main_tab/main_tab.dart';
import 'package:library_architecture_mvvm_modify_todo/model_q_there_is_state_view_model/main_tab_q_there_is_state_view_model/main_tab_q_there_is_state_view_model.dart';

final class MainViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQThereIsStateViewModel
  final _mainTabQThereIsStateViewModel =
      MainTabQThereIsStateViewModel(InitializedStreamMainTab());

  @override
  void dispose() {
    _mainTabQThereIsStateViewModel.dispose();
  }

  MainTab? get getMainTab {
    return _mainTabQThereIsStateViewModel.getMainTab;
  }
}
