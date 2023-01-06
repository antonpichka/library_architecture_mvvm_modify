import 'package:flutter/foundation.dart';
import 'package:library_arch_mvvm_modify_weather/modelQNamedServiceViewModel/stringsQNoServiceViewModel/StringsQNoServiceViewModelUsingGetNP.dart';
import 'package:library_architecture_mvvm_modify/base_model/list_strings.dart';
import 'package:library_architecture_mvvm_modify/base_model/strings.dart';

class IconButtonSearchWidgetListViewModel {
  @protected
  final StringsQNoServiceViewModelUsingGetNP<Strings,ListStrings<Strings>> stringsQNoServiceViewModelUsingGetNP;

  IconButtonSearchWidgetListViewModel(this.stringsQNoServiceViewModelUsingGetNP);

  Strings? get getStringsUsingGetNP {
    return stringsQNoServiceViewModelUsingGetNP.getStringsUsingGetNP;
  }
}