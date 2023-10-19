import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseGetListModelFromNamedServiceNPDataSource<
    T extends BaseListModel> {

  const BaseGetListModelFromNamedServiceNPDataSource();

  Future<Result<T>> getListModelFromNamedServiceNPDS();
}
