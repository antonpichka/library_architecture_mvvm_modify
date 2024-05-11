import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// The purpose of the class is to provide test and release data so that you can quickly test designs or requests, etc.
/// Where to use ? - use in 'NamedVM' class
@immutable
final class RWTMode {
  /// Determines which mod to use. Release or test
  /// Where to use ? - here
  final EnumRWTMode _enumRWTMode;

  /// This is a map that stores the name of the callback and the callback itself for release
  /// Where to use ? - here
  final Map<String,NamedCallback> _mapStringWNamedCallbackWRelease;

  /// This is a map that stores the name of the callback and the callback itself for test
  /// Where to use ? - here
  final Map<String,NamedCallback> _mapStringWNamedCallbackWTest;

  /// Initialize the parameters '_enumRWTMode','_mapStringWNamedCallbackWRelease','_mapStringWNamedCallbackWTest'
  /// Where to use ? - use in 'NamedVM' class
  RWTMode(this._enumRWTMode, List<NamedCallback> listNamedCallbackWRelease, List<NamedCallback> listNamedCallbackWTest)
      : _mapStringWNamedCallbackWRelease = _getMapStringWNamedCallbackFromListNamedCallback(listNamedCallbackWRelease),
        _mapStringWNamedCallbackWTest = _getMapStringWNamedCallbackFromListNamedCallback(listNamedCallbackWTest);

  /// getMapStringWNamedCallback - get a map with the name of the callback and the callback itself
  /// FromListNamedCallback - get a list of temporary callbacks to add them to the map
  /// Where to use ? - here
  static Map<String,NamedCallback> _getMapStringWNamedCallbackFromListNamedCallback(List<NamedCallback> listNamedCallback) {
    final mapStringWNamedCallback = <String,NamedCallback>{};
    for(final NamedCallback itemNamedCallback in listNamedCallback) {
      mapStringWNamedCallback[itemNamedCallback.name] = itemNamedCallback;
    }
    return mapStringWNamedCallback;
  }

  /// getNamedCallback - get named callback
  /// FromName - get the name of the callback to get an object from the method map, but we didn’t specify ‘Where’ because the developer doesn’t need to know this, and this was done so that the method by name would be shorter
  /// Where to use ? - use in 'NamedVM' class
  NamedCallback getNamedCallbackFromName(String name) {
    final mapStringWNamedCallbackWhereSelectModParametersThree = _getMapStringWNamedCallbackWhereSelectModParametersThree;
    if(!mapStringWNamedCallbackWhereSelectModParametersThree.containsKey(name)) {
      return throw LocalException(this,EnumGuilty.developer,"RWTModeQQGetNamedCallbackFromName","no exists key: $name");
    }
    return mapStringWNamedCallbackWhereSelectModParametersThree[name]!;
  }

  /// getMapStringWNamedCallback - get a map with the name of the callback and the callback itself
  /// WhereSelectMod - select a mod between release and test
  /// ParametersThree - one parameter checks the mod and the other two parameters return map
  /// Where to use ? - here
  Map<String,NamedCallback> get _getMapStringWNamedCallbackWhereSelectModParametersThree {
    if(_enumRWTMode == EnumRWTMode.release) {
      return _mapStringWNamedCallbackWRelease;
    }
    return _mapStringWNamedCallbackWTest;
  }
}