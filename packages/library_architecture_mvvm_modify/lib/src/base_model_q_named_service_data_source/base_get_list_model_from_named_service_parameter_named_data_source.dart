import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseGetListModelFromNamedServiceParameterNamedDataSource<
    T extends BaseListModel, Y extends Object> {
  Future<T> getListModelFromNamedServiceParameterNamedDS(Y parameter);
}
