import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class DefaultState<T extends BaseDataForNamed<Enum>>
    extends BaseNamedState<T> {
  final T _dataForNamed;

  const DefaultState(this._dataForNamed);

  @override
  void dispose() {}

  @override
  T get getDataForNamed => _dataForNamed;
}
