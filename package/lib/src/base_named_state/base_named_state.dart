import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseNamedState<T extends BaseDataForNamed>
    implements IDispose {
  const BaseNamedState();

  T get getDataForNamed;
}
