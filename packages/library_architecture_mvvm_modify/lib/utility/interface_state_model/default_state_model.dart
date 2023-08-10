import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_state_model/i_state_model.dart';

final class DefaultStateModel<T extends BaseModel, Y extends BaseListModel<T>>
    implements IStateModel<T, Y> {
  T? _model;
  Y? _listModel;

  DefaultStateModel(this._model, this._listModel);

  @override
  T? get getModel => _model;

  @override
  Y? get getListModel => _listModel;

  @override
  set setModel(T model) {
    _model = model;
  }

  @override
  set setListModel(Y listModel) {
    _listModel = listModel;
  }
}
