import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

// OperationResultModel(InNamedWhereNamed)[FromNamed]ParameterNamedService
// NamedUtility

@immutable
abstract base class BaseNamedViewModel<T extends BaseDataForNamed<Enum>,
    Y extends BaseNamedStreamWState<T>> implements IDispose {
  @protected
  final Y namedStreamWState;

  const BaseNamedViewModel(this.namedStreamWState);

  Future<String> init();

  @override
  void dispose() {
    namedStreamWState.dispose();
  }

  @nonVirtual
  Stream<T> get getStreamDataForNamedParameterNamedStreamWState {
    return namedStreamWState.getStreamDataForNamed;
  }

  @nonVirtual
  T get getDataForNamedParameterNamedStreamWState {
    return namedStreamWState.getDataForNamed;
  }

  @nonVirtual
  void notifyStreamDataForNamedParameterNamedStreamWState() {
    namedStreamWState.notifyStreamDataForNamed();
  }
}
