import 'package:meta/meta.dart';

/// The repository is tied to a specific model, where you can enable test and release mode
/// Where to use ? - use in 'NamedVM' class
@immutable
abstract base class BaseModelRepository {
  /// No initialize the parameters
  /// Where to use ? - use in 'NamedVM' class
  const BaseModelRepository();

  /// getSafeValue - we get a safe value so as not to get an error
  /// WhereUsedInMethodGetModel - used in the 'getBaseModelFromMapAndListKeys' method
  /// FromMapAndListKeysAndIndexAndDefaultValue - parameters that are needed to get a safe value, where the 'defaultValue' parameter gives us the default value in case of an error
  /// Where to use ? - here
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
