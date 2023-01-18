import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/main_tab/list_main_tab.dart';
import 'package:library_architecture_mvvm_modify_todo/model/main_tab/main_tab.dart';

class MainTabQThereIsStateViewModel<T extends MainTab,Y extends ListMainTab<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  MainTabQThereIsStateViewModel(super.iInitializedStreamModel);

  T? get getMainTab {
    return getModel;
  }
}