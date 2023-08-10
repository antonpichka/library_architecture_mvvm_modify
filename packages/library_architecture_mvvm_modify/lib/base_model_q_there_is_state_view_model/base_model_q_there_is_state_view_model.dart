import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_state_model/i_initialized_state_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_state_model/i_state_model.dart';
import 'package:meta/meta.dart';

abstract base class BaseModelQThereIsStateViewModel<T extends BaseModel,
    Y extends BaseListModel<T>> {
  final IStateModel<T, Y> _iStateModel;

  BaseModelQThereIsStateViewModel(
      IInitializedStateModel<T, Y> iInitializedStateModel)
      : _iStateModel = iInitializedStateModel.getStateModel;

  @nonVirtual
  IStateModel<T, Y>? get getIStateModel {
    return _iStateModel;
  }

  @nonVirtual
  Future<T?> get getFutureModel async {
    return _iStateModel.getModel;
  }

  @nonVirtual
  T? get getModel {
    return _iStateModel.getModel;
  }

  @nonVirtual
  set setModel(T model) {
    _iStateModel.setModel = model;
  }

  @nonVirtual
  Future<Y?> get getFutureListModel async {
    return _iStateModel.getListModel;
  }

  @nonVirtual
  Y? get getListModel {
    return _iStateModel.getListModel;
  }

  @nonVirtual
  set setListModel(Y listModel) {
    _iStateModel.setListModel = listModel;
  }
}
