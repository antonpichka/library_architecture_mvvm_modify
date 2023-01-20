import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class DescriptionTextFormFieldWidgetListViewModel {
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForDescription;

  DescriptionTextFormFieldWidgetListViewModel(
      this.stringsQThereIsStateViewModelForDescription);

  Stream<Strings?>? get getStreamStrings {
    return stringsQThereIsStateViewModelForDescription.getStreamStrings;
  }

  void setFieldByStringsAndInGeneralZeroTask(String value) {
    stringsQThereIsStateViewModelForDescription
        .getStrings
        ?.field = value;
    stringsQThereIsStateViewModelForDescription
        .notifyStreamStrings();
  }
}