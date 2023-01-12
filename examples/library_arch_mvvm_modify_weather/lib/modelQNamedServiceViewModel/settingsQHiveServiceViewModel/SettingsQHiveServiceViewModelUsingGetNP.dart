import 'package:hive_flutter/hive_flutter.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/HiveService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_named_service.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/get_model_from_named_service_np_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:meta/meta.dart';

class SettingsQHiveServiceViewModelUsingGetNP<T extends Settings,Y extends ListSettings<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements
        GetModelFromNamedServiceNPDataSource<T>
{
  @protected
  final hiveService = HiveService();

  Future<T?> getSettingsFromHiveServiceNP() {
    return getModelFromNamedServiceNP();
  }

  @nonVirtual
  @override
  Object? get modelQNamedServiceDataSource => this;

  @visibleForTesting
  @nonVirtual
  @override
  List<BaseNamedService?> get listNamedService => [hiveService];

  @protected
  @override
  Future<T?> getModelFromNamedServiceNPDS()
  async {
    try {
      final Box? boxSettings = await hiveService
          .getBoxSettings();
      final object = boxSettings?.get(
          Settings.constKeySettingsQHiveService,
          defaultValue: getSettingsForSuccessWhereKeyNotFound());
      return getSettingsFromObject(object);
    } catch(e) {
      return getSettingsFromBaseException(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }

  @protected
  T? getSettingsFromObject(Object? object) {
    final settings = object as Settings;
    return Settings.success(
        settings.color,
        settings.temperatureUnits) as T?;
  }

  @protected
  T? getSettingsForSuccessWhereKeyNotFound() {
    return Settings.getSettingsForSuccessWhereKeyNotFound as T?;
  }

  @protected
  T? getSettingsFromBaseException(BaseException? baseException) {
    return Settings.exception(baseException!) as T?;
  }
}