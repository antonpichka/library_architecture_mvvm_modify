import 'package:library_arch_mvvm_modify_counter/modelQNamedServiceViewModel/intQNoServiceViewModel/IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_or_named_widget_for_named_view_list_view_model/base_named_view_or_named_widget_for_named_view_list_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model/int.dart';

class MainViewListViewModel
    extends BaseNamedViewOrNamedWidgetForNamedViewListViewModel
{
  final _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement = IntQNoServiceViewModelUsingGetNPForIncrementAndDecrement();

  @override
  void dispose() {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }

  void incrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      {Function(Int int) functionForSuccess})
  {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement
        .field++;
    functionForSuccess(_intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement);
  }

  void decrementFieldByIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      {Function(Int int) functionForSuccess})
  {
    _intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement
        .field--;
    functionForSuccess(_intQNoServiceViewModelUsingGetNPForIncrementAndDecrement
        .getIntUsingGetNPForIncrementAndDecrement);
  }
}