import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';
import 'package:meta/meta.dart';

/// This class is needed to manage the state of the model and streams,
/// which also receives models and streams under its control from "ModelQNamedServiceViewModel"
abstract base class BaseModelQThereIsStateViewModel<T extends BaseModel,
    Y extends BaseListModel<T>> implements IDispose {
  final IStreamModel<T, Y>? _iStreamModel;

  BaseModelQThereIsStateViewModel(
      IInitializedStreamModel<T, Y> iInitializedStreamModel)
      : _iStreamModel = iInitializedStreamModel.initializedStreamModel();

  /// The purpose of the method is to release resources
  @override
  void dispose() {
    _iStreamModel?.dispose();
  }

  // Start IStreamModel
  /// The purpose of this method is to force IStreamModel to override your implementation and call your methods.
  @nonVirtual
  IStreamModel<T, Y>? get getIStreamModel {
    return _iStreamModel;
  }
  // End IStreamModel

  // Start Model
  /// Get a future model from IStreamModel
  @nonVirtual
  Future<T?> get getFutureModel async {
    return _iStreamModel?.getModel;
  }

  /// Get a stream model from IStreamModel
  @nonVirtual
  Stream<T?>? get getStreamModel {
    return _iStreamModel?.getStreamModel;
  }

  /// Get a model from IStreamModel
  @nonVirtual
  T? get getModel {
    return _iStreamModel?.getModel;
  }

  /// Set a model from IStreamModel
  @nonVirtual
  set setModel(T? model) {
    _iStreamModel?.setModel = model;
  }

  /// Notify stream model from IStreamModel
  @nonVirtual
  void notifyStreamModel() {
    _iStreamModel?.notifyStreamModel();
  }
  // End Model

  // Start ListModel
  /// Get a future list model from IStreamModel
  @nonVirtual
  Future<Y?> get getFutureListModel async {
    return _iStreamModel?.getListModel;
  }

  /// Get a stream list model from IStreamModel
  @nonVirtual
  Stream<Y?>? get getStreamListModel {
    return _iStreamModel?.getStreamListModel;
  }

  /// Get a list model from IStreamModel
  @nonVirtual
  Y? get getListModel {
    return _iStreamModel?.getListModel;
  }

  /// Set a list model from IStreamModel
  @nonVirtual
  set setListModel(Y? listModel) {
    _iStreamModel?.setListModel = listModel;
  }

  /// Notify stream list model from IStreamModel
  @nonVirtual
  void notifyStreamListModel() {
    _iStreamModel?.notifyStreamListModel();
  }
  // End ListModel
}
