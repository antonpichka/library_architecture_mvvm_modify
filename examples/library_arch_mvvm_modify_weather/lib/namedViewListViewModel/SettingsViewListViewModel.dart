import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/ListTileTemperatureUnitsWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class SettingsViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel


  // NamedWidgetListViewModel
  late final ListTileTemperatureUnitsWidgetListViewModel listTileTemperatureUnitsWidgetListViewModel;

  SettingsViewListViewModel() {
    listTileTemperatureUnitsWidgetListViewModel = ListTileTemperatureUnitsWidgetListViewModel();
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

}