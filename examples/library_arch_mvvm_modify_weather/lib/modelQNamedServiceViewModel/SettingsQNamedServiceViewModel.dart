import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_there_is_state_view_model.dart';

abstract class SettingsQNamedServiceViewModel<T extends Settings,Y extends ListSettings<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  SettingsQNamedServiceViewModel.thereIsDataSource(super.iCloneStreamModelForSuccess) : super.thereIsDataSource();
  SettingsQNamedServiceViewModel.noDataSource(super.list, super.iCloneStreamModelForSuccess) : super.noDataSource();
}