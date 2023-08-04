import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

/// This class provides access to the model and stream, and resides in the "ModelQThereIsStateModel" class.
/// This class must be implemented, and in the implemented class,
/// the model and stream controllers must be a field and change state if necessary
abstract interface class IStateModel<T extends BaseModel, Y extends BaseListModel<T>>
{
  /// Get a Model
  T? get getModel;

  /// Get a ListModel
  Y? get getListModel;

  /// Set a Model
  set setModel(T? model);

  /// Set a ListModel
  set setListModel(Y? listModel);
}
