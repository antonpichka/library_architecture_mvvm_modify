import 'package:library_arch_mvvm_modify_weather/model/location/Location.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

class ListLocation<T extends Location>
    extends BaseListModel<T>
{
  ListLocation.success(super.list) : super.success();
  ListLocation.exception(super.exception) : super.exception();

  static ListLocation<Location> get getListLocationForSuccess => ListLocation<Location>.success([]);
}