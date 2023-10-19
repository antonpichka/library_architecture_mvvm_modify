import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseGetModelFromNamedServiceNPDataSource<
    T extends BaseModel> {
  const BaseGetModelFromNamedServiceNPDataSource();

  Future<Result<T>> getModelFromNamedServiceNPDS();
}
