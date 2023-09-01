import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

abstract base class BaseGetModelFromNamedServiceNPDataSource<
    T extends BaseModel> {
  Future<T> getModelFromNamedServiceNPDS();
}
