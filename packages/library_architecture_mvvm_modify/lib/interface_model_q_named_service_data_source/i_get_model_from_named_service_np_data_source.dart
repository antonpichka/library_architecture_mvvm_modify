import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract interface class IGetModelFromNamedServiceNPDataSource<
    T extends BaseModel> {
  Future<T> getModelFromNamedServiceNPDS();
}
