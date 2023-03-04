import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class TitleTextFormFieldWidgetListViewModel {
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForTitle;

  TitleTextFormFieldWidgetListViewModel(
      this.stringsQThereIsStateViewModelForTitle);

  Stream<Strings?>? get getStreamStrings {
    return stringsQThereIsStateViewModelForTitle.getStreamStrings;
  }

  void setFieldByStringsAndInGeneralZeroTask(String value) {
    stringsQThereIsStateViewModelForTitle.getStrings?.field = value;
    stringsQThereIsStateViewModelForTitle.notifyStreamStrings();
  }
}
