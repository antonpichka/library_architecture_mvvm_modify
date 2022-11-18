import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_or_named_widget_for_named_view_list_view_model/base_named_view_or_named_widget_for_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/int.dart';

class IntTextWidgetForMainViewListViewModel
    extends BaseNamedViewOrNamedWidgetForNamedViewListViewModel
{
  final _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement =
  IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement();

  @override
  void dispose() {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }

  Stream<Int> get getStreamIntUsingGetNPForIncrementAndDecrement {
    return _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement.getStreamIntUsingGetNPForIncrementAndDecrement;
  }

  void setIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      Int int)
  {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .setIntUsingGetNPForIncrementAndDecrement(int);
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
  }
}