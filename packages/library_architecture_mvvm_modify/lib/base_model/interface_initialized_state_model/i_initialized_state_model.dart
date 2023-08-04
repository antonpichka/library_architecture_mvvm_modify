import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_state_model/i_state_model.dart';

///  This class is designed to initialize "IStateModel"
abstract interface class IInitializedStateModel<T extends BaseModel, Y extends BaseListModel<T>> {
  // Default class: return DefaultStateModel<User,ListUser>(User.success(""),ListUser.success([]));
  IStateModel<T, Y> get getStateModel;
}
