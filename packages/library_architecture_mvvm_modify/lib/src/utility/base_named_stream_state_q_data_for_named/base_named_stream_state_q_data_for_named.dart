import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseNamedStreamStateQDataForNamed<
    T extends BaseDataForNamed> implements IDispose {
  Stream<T> get getStreamDataForNamed;

  T get getDataForNamed;

  void notifyStreamDataForNamed();
}
