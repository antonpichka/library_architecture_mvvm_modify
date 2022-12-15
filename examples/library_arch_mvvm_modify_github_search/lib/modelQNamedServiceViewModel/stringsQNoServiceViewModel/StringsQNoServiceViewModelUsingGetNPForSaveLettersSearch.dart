import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_clone_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/strings_q_no_service_view_model.dart';

class StringsQNoServiceViewModelUsingGetNPForSaveLettersSearch<T extends Strings,Y extends ListStrings<T>>
    extends StringsQNoServiceViewModel<T,Y>
{
  StringsQNoServiceViewModelUsingGetNPForSaveLettersSearch(ICloneStreamModelForSuccess<T,Y> iCloneStreamModelForSuccess) : super([EnumForIStreamModelVM.getNP],iCloneStreamModelForSuccess);

  @override
  Object thisClass() {
    return this;
  }

  T? get getStringsUsingGetNPForSaveLettersSearch {
    return getModel(EnumForIStreamModelVM.getNP);
  }
}