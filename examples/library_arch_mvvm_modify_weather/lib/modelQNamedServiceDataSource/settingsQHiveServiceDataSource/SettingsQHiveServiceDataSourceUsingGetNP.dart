import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/namedService/HiveService.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_np.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';

class SettingsQHiveServiceDataSourceUsingGetNP<T extends Settings,Y extends ListSettings<T>>
    implements
        GetModelFromNamedServiceNPDataSource<T>
{
  @protected
  final hiveService = HiveService();
  @protected
  final IModelForNamedTIP<T,LocalException> iSettingsForLocalExceptionTIP;
  @protected
  final IModelForNamedTIP<T,Object> iSettingsForObjectTIP;
  @protected
  final IModelForNamedNP<T> iSettingsForDefaultWhereKeyNotFoundNP;

  SettingsQHiveServiceDataSourceUsingGetNP(
      this.iSettingsForLocalExceptionTIP,
      this.iSettingsForObjectTIP,
      this.iSettingsForDefaultWhereKeyNotFoundNP);

  @override
  Future<T?> getModelFromNamedServiceNP()
  async {
    try {
      final Box? boxSettings = await hiveService
          .getHiveSingleton
          ?.getBoxSettings();
      return iSettingsForObjectTIP.getModelForNamedTIP(boxSettings?.get(Settings.constKeySettingsQHiveService, defaultValue: iSettingsForDefaultWhereKeyNotFoundNP.getModelForNamedNP()));
    } catch(e) {
      return iSettingsForLocalExceptionTIP.getModelForNamedTIP(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  ValueListenable<Box>? get getCustomValueListenableBoxSettings {
    return hiveService
        .getHiveSingleton
        ?.getBoxSettingsAlreadyOpen()
        ?.listenable();
  }
}