import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

// OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService
// NamedUtility

/// An object that provides the state and stream of 'DataForNamed', as well as a conductor between 'NamedView' and 'OperationEEModel(EEWhereNamed)[EEFromNamed]EEParameterNamedService'
/// Where to use ? - use in 'NamedView'
@immutable
abstract base class BaseNamedViewModel<T extends BaseDataForNamed<Enum>,
    Y extends BaseNamedStreamWState<T>> implements IDispose {
  /// Object that provides the state and stream
  /// Where to use ? - only in heirs
  @protected
  final Y namedStreamWState;

  /// Initialize the parameter 'namedStreamWState'
  /// Where to use ? - use in the heirs
  const BaseNamedViewModel(this.namedStreamWState);

  /// The method where the initialization of the requests you need occurs, etc.
  /// Where to use ? - use in 'NamedView' class
  Future<String> init();

  /// Frees up device resources
  /// Where to use ? - use in 'NamedView' and well, the heirs if there are streams from services
  @override
  void dispose() {
    namedStreamWState.dispose();
  }

  /// getStreamDataForNamed - get stream 'DataForNamed'
  /// ParameterNamedStreamWState - from parameter 'namedStreamWState'
  /// Where to use ? - use in 'NamedView' class
  @nonVirtual
  Stream<T> get getStreamDataForNamedParameterNamedStreamWState {
    return namedStreamWState.getStreamDataForNamed;
  }

  /// getDataForNamed - get 'DataForNamed'
  /// ParameterNamedStreamWState - from parameter 'namedStreamWState'
  /// Where to use ? - use in 'NamedView','NamedViewModel' classes
  @nonVirtual
  T get getDataForNamedParameterNamedStreamWState {
    return namedStreamWState.getDataForNamed;
  }

  /// notifyStreamDataForNamed - notify the stream about new data
  /// ParameterNamedStreamWState - from parameter 'namedStreamWState'
  /// Where to use ? - use in 'NamedView','NamedViewModel' classes
  @nonVirtual
  void notifyStreamDataForNamedParameterNamedStreamWState() {
    namedStreamWState.notifyStreamDataForNamed();
  }
}
