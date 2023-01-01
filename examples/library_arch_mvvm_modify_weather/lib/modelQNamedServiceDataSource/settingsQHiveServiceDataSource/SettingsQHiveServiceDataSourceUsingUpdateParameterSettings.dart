import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/namedService/HiveService.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/SettingsTypeParameter.dart';
import 'package:library_architecture_mvvm_modify/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_type_parameter/bool_type_parameter.dart';

class SettingsQHiveServiceDataSourceUsingUpdateParameterSettings<T extends Settings,Y extends ListSettings<T>>
    implements
        UpdateModelToNamedServiceParameterNamedDataSource<BoolTypeParameter,SettingsTypeParameter<T>>
{
  @protected
  final hiveService = HiveService();

  SettingsQHiveServiceDataSourceUsingUpdateParameterSettings();

  @override
  Future<BoolTypeParameter?> updateModelToNamedServiceParameterNamed(
      SettingsTypeParameter<T>? parameter)
  async {
    try {
      final Box? boxSettings = await hiveService
          .getHiveSingleton
          ?.getBoxSettings();
      boxSettings?.put(Settings.constKeySettingsQHiveService, parameter!.parameter!);
      return BoolTypeParameter.success(true);
    } catch(e) {
      return BoolTypeParameter.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}