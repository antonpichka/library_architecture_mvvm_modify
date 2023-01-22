import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';

/// This class provides access to the model and stream, and resides in the "ModelQThereIsStateModel" class.
/// This class must be implemented, and in the implemented class,
/// the model and stream controllers must be a field and change state if necessary
abstract class IStreamModel<T extends BaseModel,Y extends BaseListModel<T>>
    implements IDispose
{
  Stream<T?> get getStreamModel;
  Stream<Y?> get getStreamListModel;
  T? get getModel;
  Y? get getListModel;
  set setModel(T? model);
  set setListModel(Y? listModel);
  void notifyStreamModel();
  void notifyStreamListModel();
}