import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';

class StringsQThereIsStateViewModelForSaveLettersSearch<T extends Strings,Y extends ListStrings<T>>
    extends StringsQThereIsStateViewModel<T,Y>
{
  StringsQThereIsStateViewModelForSaveLettersSearch(super.iStreamModelForSuccess);

  T? get getStringsForSaveLettersSearch {
    return getModel;
  }
}