import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/namedService/HiveService.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/SettingsTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_model_for_named/i_model_for_named_tip.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class SettingsQHiveServiceDataSourceUsingUpdateParameterSettingsAndGetNP<T extends Settings,Y extends ListSettings<T>>
    implements
        UpdateModelToNamedServiceParameterNamedDataSource<BoolTypeParameter,SettingsTypeParameter<T>>,
        GetModelFromNamedServiceNPDataSource<T>
{
  final _hiveService = HiveService();
  final IModelForNamedTIP<T,LocalException> _iSettingsForLocalExceptionTIP;
  final IModelForNamedTIP<T,Object> _iSettingsForObjectTIP;

  SettingsQHiveServiceDataSourceUsingUpdateParameterSettingsAndGetNP(this._iSettingsForLocalExceptionTIP, this._iSettingsForObjectTIP);

  @override
  Future<BoolTypeParameter?> updateModelToNamedServiceParameterNamed(
      SettingsTypeParameter<T>? parameter)
  async {
    try {
      final Box? boxSettings = await _hiveService
          .getHiveSingleton
          ?.getBoxSettings();
      boxSettings?.put(Settings.constKeySettingsQHiveService, parameter!.parameter!);
      return BoolTypeParameter.success(true);
    } catch(e) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @override
  Future<T?> getModelFromNamedServiceNP()
  async {
    try {
      final Box? boxSettings = await _hiveService
          .getHiveSingleton
          ?.getBoxSettings();
      return _iSettingsForObjectTIP.getModelForNamedTIP(boxSettings?.get(Settings.constKeySettingsQHiveService));
      // defaultValue: Settings.getSettingsForSuccessWhereKeyNotFound);
    } catch(e) {
      return _iSettingsForLocalExceptionTIP.getModelForNamedTIP(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}