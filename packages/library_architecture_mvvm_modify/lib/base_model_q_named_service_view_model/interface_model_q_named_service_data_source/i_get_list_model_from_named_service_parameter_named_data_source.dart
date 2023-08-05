import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

abstract interface class IGetListModelFromNamedServiceParameterNamedDataSource<
    T extends BaseListModel, Y extends Object> {
  Future<T?> getListModelFromNamedServiceParameterNamedDS(Y? parameter);
}
