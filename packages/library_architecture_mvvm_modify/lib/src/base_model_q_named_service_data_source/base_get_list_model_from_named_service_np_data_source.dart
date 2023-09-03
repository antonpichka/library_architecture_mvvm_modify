import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseGetListModelFromNamedServiceNPDataSource<
    T extends BaseListModel> {
  Future<Result<T>> getListModelFromNamedServiceNPDS();
}
