import 'package:hive/hive.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/ListSettings.dart';
import 'package:library_arch_mvvm_modify_weather/model/settings/Settings.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/namedService/HiveService.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/base_model_q_named_service_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_view_model/interface_model_q_named_service_data_source/update_model_to_named_service_parameter_named_data_source.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/result.dart';
import 'package:meta/meta.dart';

class SettingsQHiveServiceViewModelUsingUpdateParameterSettings<T extends Settings,Y extends ListSettings<T>>
    extends BaseModelQNamedServiceViewModel<T,Y>
    implements
        UpdateModelToNamedServiceParameterNamedDataSource<bool,T>
{
  @protected
  final hiveService = HiveService();

  Future<Result<bool>?> updateSettingsToHiveServiceParameterSettings(T parameter) {
    return updateModelToNamedServiceParameterNamed<bool,T>(parameter);
  }

  @protected
  @override
  Object? get modelQNamedServiceDataSource => this;

  @protected
  @override
  Future<Result<bool>?> updateModelToNamedServiceParameterNamedDS(
      T? parameter)
  async {
    try {
      final Box? boxSettings = await hiveService
          .getHiveSingleton
          ?.getBoxSettings();
      boxSettings?.put(Settings.constKeySettingsQHiveService, parameter);
      return Result<bool>.success(true);
    } catch(e) {
      return Result<bool>.exception(LocalException(this,EnumGuiltyForLocalException.device,e.toString()));
    }
  }
}