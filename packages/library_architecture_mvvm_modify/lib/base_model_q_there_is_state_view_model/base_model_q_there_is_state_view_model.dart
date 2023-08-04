import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_state_model/i_initialized_state_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_state_model/i_state_model.dart';
import 'package:meta/meta.dart';

/// This class is needed to manage the state of the model,
abstract base class BaseModelQThereIsStateViewModel<T extends BaseModel,
    Y extends BaseListModel<T>> {
  final IStateModel<T, Y> _iStateModel;

  BaseModelQThereIsStateViewModel(
      IInitializedStateModel<T, Y> iInitializedStateModel)
      : _iStateModel = iInitializedStateModel.getStateModel;

  /// The purpose of this method is to force IStateModel to override your implementation and call your methods.
  @nonVirtual
  IStateModel<T, Y>? get getIStateModel {
    return _iStateModel;
  }

  /// Get a future model from IStateModel
  @nonVirtual
  Future<T?> get getFutureModel async {
    return _iStateModel.getModel;
  }

  /// Get a model from IStateModel
  @nonVirtual
  T? get getModel {
    return _iStateModel.getModel;
  }

  /// Set a model from IStateModel
  @nonVirtual
  set setModel(T? model) {
    _iStateModel.setModel = model;
  }

  /// Get a future list model from IStateModel
  @nonVirtual
  Future<Y?> get getFutureListModel async {
    return _iStateModel.getListModel;
  }

  /// Get a list model from IStateModel
  @nonVirtual
  Y? get getListModel {
    return _iStateModel.getListModel;
  }

  /// Set a list model from IStateModel
  @nonVirtual
  set setListModel(Y? listModel) {
    _iStateModel.setListModel = listModel;
  }
}
