import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

abstract interface class IGetListModelFromNamedServiceNPDataSource<
    T extends BaseListModel> {
  Future<T> getListModelFromNamedServiceNPDS();
}
