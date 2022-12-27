import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/settingsQHiveServiceDataSource/SettingsQHiveServiceDataSourceUsingUpdateParameterSettingsAndGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/SettingsQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/enum_for_i_stream_model_vm.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';

class SettingsQHiveServiceViewModelUsingUpdateParameterSettingsAndGetNP<T extends Settings,Y extends ListSettings<T>>
    extends SettingsQNamedServiceViewModel<T,Y>
{
  final SettingsQHiveServiceDataSourceUsingUpdateParameterSettingsAndGetNP<T,Y> _dataSource;

  SettingsQHiveServiceViewModelUsingUpdateParameterSettingsAndGetNP(
      super.iCloneStreamModelForSuccess,
      IModelForNamedTIP<T,LocalException> iSettingsForLocalExceptionTIP,
      IModelForNamedTIP<T,Object> iSettingsForObjectTIP,
      IModelForNamedNP<T> iSettingsForDefaultWhereKeyNotFoundNP)
      : _dataSource = SettingsQHiveServiceDataSourceUsingUpdateParameterSettingsAndGetNP(iSettingsForLocalExceptionTIP,iSettingsForObjectTIP,iSettingsForDefaultWhereKeyNotFoundNP),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  SettingsQHiveServiceDataSourceUsingUpdateParameterSettingsAndGetNP<T,Y>? get getModelQNamedServiceDataSource => _dataSource;

  Future<T?> getSettingsFromHiveServiceNPAndSetSettings() {
    return getModelFromNamedServiceNPAndSetModel();
  }

  ValueListenable<Box>? get getCustomValueListenableBoxSettings {
    return getModelQNamedServiceDataSource?.getCustomValueListenableBoxSettings;
  }

  Stream<T>? get getStreamSettingsUsingGetNP {
    return getStreamModel(EnumForIStreamModelVM.getNP);
  }

  void notifyStreamSettingsUsingGetNP() {
    notifyStreamModel(EnumForIStreamModelVM.getNP);
  }
}