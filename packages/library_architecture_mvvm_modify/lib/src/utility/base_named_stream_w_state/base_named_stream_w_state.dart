import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseNamedStreamWState<T extends BaseDataForNamed>
    implements IDispose {
  const BaseNamedStreamWState();

  Stream<T> get getStreamDataForNamed;

  T get getDataForNamed;

  void notifyStreamDataForNamed();
}
