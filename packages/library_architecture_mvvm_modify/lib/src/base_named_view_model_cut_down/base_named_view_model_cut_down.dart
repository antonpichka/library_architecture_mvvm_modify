import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

// OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
// NamedUtility

/// An object that provides the state of 'DataForNamed', as well as a conductor between 'NamedView' and 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService'
/// Where to use ? - use in 'NamedView'
@immutable
abstract base class BaseNamedViewModelCutDown<T extends BaseDataForNamed<Enum>,
    Y extends BaseNamedState<T>> implements IDispose {
  /// Object that provides the state
  /// Where to use ? - only in heirs
  @protected
  final Y namedState;

  /// Initialize the parameter 'namedState'
  /// Where to use ? - use in the heirs
  const BaseNamedViewModelCutDown(this.namedState);

  /// The method where the initialization of the requests you need occurs, etc.
  /// Where to use ? - use in 'NamedView' class
  Future<String> init();

  /// Frees up device resources
  /// Where to use ? - use in 'NamedView' and well, the heirs if there are streams from services
  @override
  void dispose() {}

  /// getDataForNamed - get 'DataForNamed'
  /// ParameterNamedState - from parameter 'namedState'
  /// Where to use ? - use in 'NamedView','NamedViewModelCutDown' classes
  @nonVirtual
  T get getDataForNamedParameterNamedState {
    return namedState.getDataForNamed;
  }
}
