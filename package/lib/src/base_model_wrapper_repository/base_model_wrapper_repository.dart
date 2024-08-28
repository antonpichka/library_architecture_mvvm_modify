import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseModelWrapperRepository implements IDispose {
  const BaseModelWrapperRepository();

  @protected
  @nonVirtual
  dynamic getSafeValueFromMapAndKeyAndDefaultValue(
      Map<String, dynamic> map, String key, dynamic defaultValue) {
    try {
      return map.containsKey(key) ? map[key] : defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }
}
