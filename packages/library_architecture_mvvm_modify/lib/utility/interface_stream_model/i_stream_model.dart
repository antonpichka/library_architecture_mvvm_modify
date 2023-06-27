import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';

/// This class provides access to the model and stream, and resides in the "ModelQThereIsStateModel" class.
/// This class must be implemented, and in the implemented class,
/// the model and stream controllers must be a field and change state if necessary
abstract interface class IStreamModel<T extends BaseModel,
    Y extends BaseListModel<T>> implements IDispose {
  /// Get a stream Model
  Stream<T?> get getStreamModel;

  /// Get a stream ListModel
  Stream<Y?> get getStreamListModel;

  /// Get a Model
  T? get getModel;

  /// Get a ListModel
  Y? get getListModel;

  /// Set a Model
  set setModel(T? model);

  /// Set a ListModel
  set setListModel(Y? listModel);

  /// Notify stream Model
  void notifyStreamModel();

  /// Notify stream ListModel
  void notifyStreamListModel();
}
