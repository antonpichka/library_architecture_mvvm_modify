import 'package:library_arch_mvvm_modify_weather/model/weatherIsLoading/WeatherIsLoading.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

base class ListWeatherIsLoading<T extends WeatherIsLoading>
    extends BaseListModel<T> {
  ListWeatherIsLoading.success(super.listModel) : super.success();
  ListWeatherIsLoading.exception(super.exception) : super.exception();

  static ListWeatherIsLoading get getListWeatherIsLoadingForSuccess =>
      ListWeatherIsLoading.success([]);
}
