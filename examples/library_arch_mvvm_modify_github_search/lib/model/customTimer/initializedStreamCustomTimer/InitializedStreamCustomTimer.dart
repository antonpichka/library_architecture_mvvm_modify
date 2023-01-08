import 'package:library_arch_mvvm_modify_github_search/model/customTimer/CustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/ListCustomTimer.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamCustomTimer
   implements IInitializedStreamModel<CustomTimer,ListCustomTimer<CustomTimer>>
{
  @override
  IStreamModel<CustomTimer, ListCustomTimer<CustomTimer>>? initializedStreamModel() {
    return DefaultStreamModel<CustomTimer,ListCustomTimer>(CustomTimer.getCustomTimerForSuccess, ListCustomTimer.success([]));
  }
}