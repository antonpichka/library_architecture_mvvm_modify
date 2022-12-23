import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceDataSource/namedService/HiveService.dart';
import 'package:library_arch_mvvm_modify_weather/utility/namedTypeParameter/SettingsTypeParameter.dart';
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

  @override
  Future<BoolTypeParameter?> updateModelToNamedServiceParameterNamed(
      SettingsTypeParameter<T>? parameter)
  async {
    try {
      final Box<T>? boxSettings = await _hiveService
          .getHiveSingleton
          ?.getBoxSettings<T>();
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
      final Box<T>? boxSettings = await _hiveService
          .getHiveSingleton
          ?.getBoxSettings<T>();
      final T? settings = boxSettings?.get(Settings.constKeySettingsQHiveService);
         // defaultValue: Settings.getSettingsForSuccessWhereKeyNotFound);
    } catch(e) {

    }
  }
}