import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/DecrementFABWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IncrementFABWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IntTextWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_int.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/int_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQThereIsStateViewModel
  final _intQThereIsStateViewModelForIncrementAndDecrement =
      IntQThereIsStateViewModel(InitializedStreamInt());

  // NamedWidgetListViewModel
  late final IntTextWidgetListViewModel intTextWidgetListViewModel;
  late final IncrementFABWidgetListViewModel incrementFABWidgetListViewModel;
  late final DecrementFABWidgetListViewModel decrementFABWidgetListViewModel;

  MainViewListViewModel() {
    intTextWidgetListViewModel = IntTextWidgetListViewModel(
        _intQThereIsStateViewModelForIncrementAndDecrement);
    incrementFABWidgetListViewModel = IncrementFABWidgetListViewModel(
        _intQThereIsStateViewModelForIncrementAndDecrement);
    decrementFABWidgetListViewModel = DecrementFABWidgetListViewModel(
        _intQThereIsStateViewModelForIncrementAndDecrement);
  }

  @override
  void dispose() {
    _intQThereIsStateViewModelForIncrementAndDecrement.dispose();
  }
}
