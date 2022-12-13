import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/DecrementFABWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IncrementFABWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_counter/namedViewListViewModel/namedWidgetListViewModel/IntTextWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/clone_stream_int_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_int.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class MainViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement =
  IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement<Int,ListInt<Int>>(CloneStreamIntForSuccess());

  // NamedWidgetListViewModel
  late final IntTextWidgetListViewModel intTextWidgetListViewModel;
  late final IncrementFABWidgetListViewModel incrementFABWidgetListViewModel;
  late final DecrementFABWidgetListViewModel decrementFABWidgetListViewModel;

  MainViewListViewModel()  {
    intTextWidgetListViewModel = IntTextWidgetListViewModel(_intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);
    incrementFABWidgetListViewModel = IncrementFABWidgetListViewModel(_intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);
    decrementFABWidgetListViewModel = DecrementFABWidgetListViewModel(_intQNoServiceViewModelUsingGetNPForIncrementAndDecrement);
  }

  @override
  void dispose() {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }
}