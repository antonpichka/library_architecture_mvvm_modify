import 'package:library_arch_mvvm_modify_counter/modelNamedViewModel/intWithoutDatabaseViewModel/IntWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/int_without_database.dart';

class ListOfViewModelForIntWithoutDatabaseTextWidgetForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final IntWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement _intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement =
  IntWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement();

  @override
  void dispose() {
    _intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }

  Stream<IntWithoutDatabase> get getStreamIntWithoutDatabaseUsingGetNPForIncrementAndDecrement {
    return _intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement.getStreamIntWithoutDatabaseUsingGetNPForIncrementAndDecrement;
  }

  void setIntWithoutDatabaseUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      IntWithoutDatabase int)
  {
    _intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement
        .setIntWithoutDatabaseUsingGetNPForIncrementAndDecrement(int);
    _intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntWithoutDatabaseUsingGetNPForIncrementAndDecrement();
  }
}