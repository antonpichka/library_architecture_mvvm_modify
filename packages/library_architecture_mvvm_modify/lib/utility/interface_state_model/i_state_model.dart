import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

abstract interface class IStateModel<T extends BaseModel,
    Y extends BaseListModel<T>> {
  T? get getModel;

  Y? get getListModel;

  set setModel(T model);

  set setListModel(Y listModel);
}
