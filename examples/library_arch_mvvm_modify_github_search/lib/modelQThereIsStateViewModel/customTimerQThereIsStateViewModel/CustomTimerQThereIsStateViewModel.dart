import 'package:library_arch_mvvm_modify_github_search/model/customTimer/CustomTimer.dart';
import 'package:library_arch_mvvm_modify_github_search/model/customTimer/ListCustomTimer.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';

class CustomTimerQThereIsStateViewModel<T extends CustomTimer,
        Y extends ListCustomTimer<T>>
    extends BaseModelQThereIsStateViewModel<T, Y> {
  CustomTimerQThereIsStateViewModel(super.iInitializedStreamModel);

  T? get getCustomTimer {
    return getModel;
  }
}
