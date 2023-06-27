import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

base class TextFieldSearchWidgetListViewModel {
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForSearch;

  TextFieldSearchWidgetListViewModel(
      this.stringsQThereIsStateViewModelForSearch);

  void setFieldByStringsAndInGeneralZeroTask(String value) {
    stringsQThereIsStateViewModelForSearch.getStrings?.field = value;
  }
}
