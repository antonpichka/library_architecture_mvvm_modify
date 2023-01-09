import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/namedService/HiveService.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/settingsQHiveServiceDataSource/SettingsQHiveServiceDataSourceUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/SettingsQNamedServiceViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';

class SettingsQHiveServiceViewModelUsingGetNP<T extends Settings,Y extends ListSettings<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
{
  @protected
  final hiveService = HiveService();
  @protected
  final IModelForNamedTIP<T,LocalException> iSettingsForLocalExceptionTIP;
  @protected
  final IModelForNamedTIP<T,Object> iSettingsForObjectTIP;
  @protected
  final IModelForNamedNP<T> iSettingsForDefaultWhereKeyNotFoundNP;

  final SettingsQHiveServiceDataSourceUsingGetNP<T,Y> _dataSource;

  SettingsQHiveServiceViewModelUsingGetNP(
      super.iCloneStreamModelForSuccess,
      IModelForNamedTIP<T,LocalException> iSettingsForLocalExceptionTIP,
      IModelForNamedTIP<T,Object> iSettingsForObjectTIP,
      IModelForNamedNP<T> iSettingsForDefaultWhereKeyNotFoundNP)
      : _dataSource = SettingsQHiveServiceDataSourceUsingGetNP(iSettingsForLocalExceptionTIP,iSettingsForObjectTIP,iSettingsForDefaultWhereKeyNotFoundNP),
        super.thereIsDataSource();

  @protected
  @override
  Object get thisClass => this;

  @protected
  @override
  SettingsQHiveServiceDataSourceUsingGetNP<T,Y>? get getModelQNamedServiceDataSource => _dataSource;

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