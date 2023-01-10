import 'dart:async';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/testing.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';
import 'package:meta/meta.dart';

abstract class BaseModelQThereIsStateViewModel<T extends BaseModel,Y extends BaseListModel<T>>
    extends Testing
    implements IDispose
{
  final IStreamModel<T,Y>? _iStreamModel;

  BaseModelQThereIsStateViewModel(IInitializedStreamModel<T,Y> iInitializedStreamModel)
      : _iStreamModel = iInitializedStreamModel.initializedStreamModel();

  @override
  void dispose() {
    incrementForNumberOfExecutedMethodsInThisClass();
    _iStreamModel?.dispose();
  }

  /// Start IStreamModel **/
  @nonVirtual
  IStreamModel<T,Y>? get getIStreamModel {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _iStreamModel;
  }
  /// End IStreamModel **/

  /// Start Model **/
  @nonVirtual
  Future<T?> get getFutureModel
  async {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _iStreamModel?.getModel;
  }

  @nonVirtual
  Stream<T?>? get getStreamModel {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _iStreamModel?.getStreamModel;
  }

  @nonVirtual
  T? get getModel {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _iStreamModel?.getModel;
  }

  @nonVirtual
  set setModel(T? model) {
    incrementForNumberOfExecutedMethodsInThisClass();
    _iStreamModel?.setModel = model;
  }

  @nonVirtual
  void notifyStreamModel() {
    incrementForNumberOfExecutedMethodsInThisClass();
    _iStreamModel?.notifyStreamModel();
  }
  /// End Model **/

  /// Start ListModel **/
  @nonVirtual
  Future<Y?> get getFutureListModel
  async {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _iStreamModel?.getListModel;
  }

  @nonVirtual
  Stream<Y?>? get getStreamListModel {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _iStreamModel?.getStreamListModel;
  }

  @nonVirtual
  Y? get getListModel {
    incrementForNumberOfExecutedMethodsInThisClass();
    return _iStreamModel?.getListModel;
  }

  @nonVirtual
  set setListModel(Y? listModel) {
    incrementForNumberOfExecutedMethodsInThisClass();
    _iStreamModel?.setListModel = listModel;
  }

  @nonVirtual
  void notifyStreamListModel() {
    incrementForNumberOfExecutedMethodsInThisClass();
    _iStreamModel?.notifyStreamListModel();
  }
  /// End ListModel **/
}