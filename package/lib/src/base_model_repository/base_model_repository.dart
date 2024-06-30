import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// The repository is tied to a specific model, where you can enable test and release mode
/// Where to use ? - use in 'NamedVM' class
@immutable
abstract base class BaseModelRepository<T extends BaseModel,
    Y extends BaseListModel<T>> {
  /// To determine test and release mode
  /// Where to use ? - use in method main
  static EnumRWTMode enumRWTMode = EnumRWTMode.test;

  /// No initialize the parameters
  /// Where to use ? - use in 'NamedVM' class
  const BaseModelRepository();

  /// Getting the model from the map and the list keys
  /// Where to use ? - here
  @protected
  T getBaseModelFromMapAndListKeys(
      Map<String, dynamic> map, List<String> listKeys);

  /// Getting the list model from the list model
  /// Where to use ? - here
  @protected
  Y getBaseListModelFromListModel(List<T> listModel);

  /// getModeCallback - getting the selected callback
  /// FromReleaseCallbackAndTestCallback - here are two callbacks to choose from
  /// ParameterEnumRWTMode - parameter that determines which callback will be used
  /// Where to use ? - here
  @protected
  @nonVirtual
  dynamic getModeCallbackFromReleaseCallbackAndTestCallbackParameterEnumRWTMode(
      dynamic releaseCallback, dynamic testCallback) {
    switch (enumRWTMode) {
      case EnumRWTMode.release:
        return releaseCallback;
      case EnumRWTMode.test:
        return testCallback;
    }
  }

  /// getSafeValue - we get a safe value so as not to get an error
  /// WhereUsedInMethodGetModel - used in the 'getBaseModelFromMapAndListKeys' method
  /// FromMapAndListKeysAndIndexAndDefaultValue - parameters that are needed to get a safe value, where the 'defaultValue' parameter gives us the default value in case of an error
  /// Where to use ? - here
  @protected
  @nonVirtual
  dynamic
      getSafeValueWhereUsedInMethodGetModelFromMapAndListKeysAndIndexAndDefaultValue(
          Map<String, dynamic> map,
          List<String> listKeys,
          int index,
          dynamic defaultValue) {
    try {
      return map.containsKey(listKeys[index])
          ? map[listKeys[index]]
          : defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }
}
