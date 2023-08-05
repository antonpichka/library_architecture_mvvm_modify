import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

abstract base class BaseGetListModelFromNamedServiceNPFBDS<
    X extends BaseListModel, C extends Object> {
  X? getListModelFromNamedServiceNPFBDS(C? parameter);
}
