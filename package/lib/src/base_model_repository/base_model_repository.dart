import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// The repository is tied to a specific model, where you can enable test and release mode
/// Where to use ? - use in 'NamedVM' class
@immutable
abstract base class BaseModelRepository<T extends BaseModel,
    Y extends BaseListModel<T>> {
  /// To determine test and release mode
  /// Where to use ? - here
  final EnumRWTMode _enumRWTMode;

  /// No initialize the parameters
  /// Where to use ? - use in 'NamedVM' class
  const BaseModelRepository(this._enumRWTMode);

  /// Getting the model from the map and the list keys
  /// Where to use ? - here
  T getBaseModelFromMapAndListKeys(
      Map<String, dynamic>? map, List<String>? listKeys);

  /// Getting the list model from the list model
  /// Where to use ? - here
  Y getBaseListModelFromListModel(List<T> listModel);

  /// getModeCallback - getting the selected callback
  /// FromReleaseCallbackAndTestCallback - here are two callbacks to choose from
  /// ParameterEnumRWTMode - parameter that determines which callback will be used
  /// Where to use ? - here
  @nonVirtual
  dynamic getModeCallbackFromReleaseCallbackAndTestCallbackParameterEnumRWTMode(
      dynamic releaseCallback, dynamic testCallback) {
    switch (_enumRWTMode) {
      case EnumRWTMode.release:
        return releaseCallback;
      case EnumRWTMode.test:
        return testCallback;
    }
  }
}
