import 'package:library_arch_mvvm_modify_counter/modelNamedViewModel/intWithoutLibraryViewModel/IntWithoutLibraryViewModelUsingGetNPForIncrementAndDecrement.dart';
import 'package:library_architecture_mvvm_modify/base_list_of_view_model_for_named_view_or_named_widget_for_named_view/base_list_of_view_model_for_named_view_or_named_widget_for_named_view.dart';
import 'package:library_architecture_mvvm_modify/base_model_named_database/int_without_library.dart';

class ListOfViewModelForIntWithoutLibraryTextWidgetForMainView
    extends BaseListOfViewModelForNamedViewOrNamedWidgetForNamedView
{
  final IntWithoutLibraryViewModelUsingGetNPForIncrementAndDecrement _intWithoutLibraryViewModelUsingGetNPForIncrementAndDecrement =
  IntWithoutLibraryViewModelUsingGetNPForIncrementAndDecrement();

  @override
  void dispose() {
    _intWithoutLibraryViewModelUsingGetNPForIncrementAndDecrement.dispose();
  }

  Stream<IntWithoutLibrary> get getStreamIntWithoutLibraryUsingGetNPForIncrementAndDecrement {
    return _intWithoutLibraryViewModelUsingGetNPForIncrementAndDecrement.getStreamIntWithoutLibraryUsingGetNPForIncrementAndDecrement;
  }

  void setIntWithoutLibraryUsingGetNPForIncrementAndDecrementAndInGeneralZeroTask(
      IntWithoutLibrary int)
  {
    _intWithoutLibraryViewModelUsingGetNPForIncrementAndDecrement
        .setIntWithoutLibraryUsingGetNPForIncrementAndDecrement(int);
    _intWithoutLibraryViewModelUsingGetNPForIncrementAndDecrement
        .notifyStreamIntWithoutLibraryUsingGetNPForIncrementAndDecrement();
  }
}