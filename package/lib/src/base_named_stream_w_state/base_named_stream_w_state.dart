import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseNamedStreamWState<T extends BaseDataForNamed>
    implements IDispose {
  const BaseNamedStreamWState();

  T get getDataForNamed;

  void listenStreamDataForNamedFromCallback(void Function(T event) callback);

  void notifyStreamDataForNamed();
}
