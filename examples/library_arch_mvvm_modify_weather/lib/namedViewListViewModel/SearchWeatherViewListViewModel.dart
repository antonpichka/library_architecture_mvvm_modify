import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/IconButtonSearchWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/TextFieldSearchWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/initialized_stream_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/strings_q_there_is_state_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class SearchWeatherViewListViewModel extends BaseNamedViewListViewModel {
  // ModelQThereIsStateViewModel
  final _stringsQThereIsStateViewModelForSearch =
      StringsQThereIsStateViewModel(InitializedStreamStrings());

  // NamedWidgetListViewModel
  late final IconButtonSearchWidgetListViewModel
      iconButtonSearchWidgetListViewModel;
  late final TextFieldSearchWidgetListViewModel
      textFieldSearchWidgetListViewModel;

  SearchWeatherViewListViewModel() {
    iconButtonSearchWidgetListViewModel = IconButtonSearchWidgetListViewModel(
        _stringsQThereIsStateViewModelForSearch);
    textFieldSearchWidgetListViewModel = TextFieldSearchWidgetListViewModel(
        _stringsQThereIsStateViewModelForSearch);
  }

  @override
  void dispose() {
    _stringsQThereIsStateViewModelForSearch.dispose();
  }
}
