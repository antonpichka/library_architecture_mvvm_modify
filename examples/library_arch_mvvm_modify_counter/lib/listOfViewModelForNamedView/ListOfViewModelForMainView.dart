import 'package:library_arch_mvvm_modify_counter/modelNamedViewModel/intWithoutDatabaseViewModel/IntWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/int_without_database.dart';

class ListOfViewModelForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final IntWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement _intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement =
  IntWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement();

  @override
  void dispose() {
    _intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }

  void incrementFieldByIntWithoutDatabaseUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      {Function(IntWithoutDatabase int) functionForSuccess})
  {
    _intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement
        .getIntWithoutDatabaseUsingGetNPForIncrementAndDecrement
        .field++;
    functionForSuccess(_intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement
        .getIntWithoutDatabaseUsingGetNPForIncrementAndDecrement);
  }

  void decrementFieldByIntWithoutDatabaseUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      {Function(IntWithoutDatabase int) functionForSuccess})
  {
    _intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement
        .getIntWithoutDatabaseUsingGetNPForIncrementAndDecrement
        .field--;
    functionForSuccess(_intWithoutDatabaseViewModelUsingGetNPForIncrementAndDecrement
        .getIntWithoutDatabaseUsingGetNPForIncrementAndDecrement);
  }
}