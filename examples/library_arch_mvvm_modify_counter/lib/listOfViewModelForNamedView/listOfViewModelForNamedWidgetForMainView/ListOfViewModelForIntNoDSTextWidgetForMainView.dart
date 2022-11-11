import 'package:library_arch_mvvm_modify_counter/modelNamedViewModel/intNoDSViewModel/IntNoDSViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/utility/base_model_named_database/int_no_ds.dart';

class ListOfViewModelForIntNoDSTextWidgetForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final IntNoDSViewModelUsingGetNPForIncrementAndDecrement _intNoDSViewModelUsingGetNPForIncrementAndDecrement =
  IntNoDSViewModelUsingGetNPForIncrementAndDecrement();

  @override
  void dispose() {
    _intNoDSViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }

  Stream<IntNoDS> get getStreamIntNoDSUsingGetNPForIncrementAndDecrement {
    return _intNoDSViewModelUsingGetNPForIncrementAndDecrement.getStreamIntNoDSUsingGetNPForIncrementAndDecrement;
  }

  void setIntNoDSUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      IntNoDS int)
  {
    _intNoDSViewModelUsingGetNPForIncrementAndDecrement
        .setIntNoDSUsingGetNPForIncrementAndDecrement(int);
    _intNoDSViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntNoDSUsingGetNPForIncrementAndDecrement();
  }
}