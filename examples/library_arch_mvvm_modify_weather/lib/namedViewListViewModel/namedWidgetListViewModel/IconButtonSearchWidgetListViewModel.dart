import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class IconButtonSearchWidgetListViewModel {
  @protected
  final StringsQThereIsStateViewModel stringsQThereIsStateViewModelForSearch;

  IconButtonSearchWidgetListViewModel(
      this.stringsQThereIsStateViewModelForSearch);

  Strings? get getStrings {
    return stringsQThereIsStateViewModelForSearch.getStrings;
  }
}
