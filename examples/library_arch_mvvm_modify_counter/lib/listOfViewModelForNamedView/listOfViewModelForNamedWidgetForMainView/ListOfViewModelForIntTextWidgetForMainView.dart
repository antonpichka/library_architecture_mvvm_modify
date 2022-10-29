import 'package:library_arch_mvvm_modify_counter/modelNamedViewModel/intViewModel/IntViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model/int.dart';

class ListOfViewModelForIntTextWidgetForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final IntViewModelUsingGetNPForIncrementAndDecrement _intViewModelUsingGetNPForIncrementAndDecrement =
  IntViewModelUsingGetNPForIncrementAndDecrement();

  @override
  void dispose() {
    _intViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }

  Stream<Int> get getStreamIntUsingGetNPForIncrementAndDecrement {
    return _intViewModelUsingGetNPForIncrementAndDecrement.getStreamIntUsingGetNPForIncrementAndDecrement;
  }

  void setIntUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      Int int)
  {
    _intViewModelUsingGetNPForIncrementAndDecrement
        .setIntUsingGetNPForIncrementAndDecrement(int);
    _intViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntUsingGetNPForIncrementAndDecrement();
  }
}