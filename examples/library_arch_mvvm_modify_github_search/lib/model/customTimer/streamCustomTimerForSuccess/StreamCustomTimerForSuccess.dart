import 'package:library_arch_mvvm_modify_github_search/model/customTimer/CustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/ListCustomTimer.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_stream_model_for_success/i_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class StreamCustomTimerForSuccess
   implements IStreamModelForSuccess<CustomTimer,ListCustomTimer<CustomTimer>>
{
  @override
  IStreamModel<CustomTimer, ListCustomTimer<CustomTimer>>? streamModelForSuccess() {
    return DefaultStreamModel<CustomTimer,ListCustomTimer>(CustomTimer.getCustomTimerForSuccess, ListCustomTimer.success([]));
  }
}