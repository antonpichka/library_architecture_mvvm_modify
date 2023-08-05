import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

abstract base class BaseGetListModelFromNamedServiceParameterNamedFBDS<
    X extends BaseListModel, C extends Object> {
  X? getListModelFromNamedServiceParameterNamedFBDS(C? parameter);
}
