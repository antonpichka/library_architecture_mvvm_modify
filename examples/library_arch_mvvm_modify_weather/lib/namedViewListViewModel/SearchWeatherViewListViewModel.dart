import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/stringsQNoServiceViewModel/StringsQNoServiceViewModelUsingGetNP.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/IconButtonSearchWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_weather/namedViewListViewModel/namedWidgetListViewModel/TextFieldSearchWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/stream_strings_for_success.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class SearchWeatherViewListViewModel
    extends BaseNamedViewListViewModel
{
  // ModelQNamedServiceViewModel
  final _stringsQNoServiceViewModelUsingGetNP =
  StringsQNoServiceViewModelUsingGetNP<Strings,ListStrings<Strings>>(StreamStringsForSuccess());

  // NamedWidgetListViewModel
  late final IconButtonSearchWidgetListViewModel iconButtonSearchWidgetListViewModel;
  late final TextFieldSearchWidgetListViewModel textFieldSearchWidgetListViewModel;

  SearchWeatherViewListViewModel() {
    iconButtonSearchWidgetListViewModel = IconButtonSearchWidgetListViewModel(
        _stringsQNoServiceViewModelUsingGetNP);
    textFieldSearchWidgetListViewModel = TextFieldSearchWidgetListViewModel(
        _stringsQNoServiceViewModelUsingGetNP);
  }

  @override
  void dispose() {
    _stringsQNoServiceViewModelUsingGetNP.dispose();
  }
}