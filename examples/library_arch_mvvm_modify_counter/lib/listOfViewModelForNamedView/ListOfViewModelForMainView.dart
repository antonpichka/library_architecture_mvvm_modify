import 'package:library_arch_mvvm_modify_counter/modelNamedViewModel/intNoDSViewModel/IntNoDSViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/int_no_ds.dart';

class ListOfViewModelForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final IntNoDSViewModelUsingGetNPForIncrementAndDecrement _intNoDSViewModelUsingGetNPForIncrementAndDecrement =
  IntNoDSViewModelUsingGetNPForIncrementAndDecrement();

  @override
  void dispose() {
    _intNoDSViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }

  void incrementFieldByIntNoDSUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      {Function(IntNoDS int) functionForSuccess})
  {
    _intNoDSViewModelUsingGetNPForIncrementAndDecrement
        .getIntNoDSUsingGetNPForIncrementAndDecrement
        .field++;
    functionForSuccess(_intNoDSViewModelUsingGetNPForIncrementAndDecrement
        .getIntNoDSUsingGetNPForIncrementAndDecrement);
  }

  void decrementFieldByIntNoDSUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      {Function(IntNoDS int) functionForSuccess})
  {
    _intNoDSViewModelUsingGetNPForIncrementAndDecrement
        .getIntNoDSUsingGetNPForIncrementAndDecrement
        .field--;
    functionForSuccess(_intNoDSViewModelUsingGetNPForIncrementAndDecrement
        .getIntNoDSUsingGetNPForIncrementAndDecrement);
  }
}