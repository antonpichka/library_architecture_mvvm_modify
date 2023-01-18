import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';
import 'package:library_architecture_mvvm_modify_todo/model/main_tab/list_main_tab.dart';
import 'package:library_architecture_mvvm_modify_todo/model/main_tab/main_tab.dart';
import 'package:library_architecture_mvvm_modify_todo/utility/named_stream_model/rx_stream_model.dart';

class InitializedStreamMainTab
    implements IInitializedStreamModel<MainTab,ListMainTab>
{
  @override
  IStreamModel<MainTab,ListMainTab>? initializedStreamModel() {
    return RXStreamModel<MainTab,ListMainTab>(MainTab.getMainTabForSuccess,ListMainTab.getListMainTabForSuccess);
  }
}