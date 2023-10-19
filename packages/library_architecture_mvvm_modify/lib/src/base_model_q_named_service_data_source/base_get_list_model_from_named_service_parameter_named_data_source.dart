import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseGetListModelFromNamedServiceParameterNamedDataSource<
    T extends BaseListModel, Y extends Object> {
  const BaseGetListModelFromNamedServiceParameterNamedDataSource();

  Future<Result<T>> getListModelFromNamedServiceParameterNamedDS(Y parameter);
}
