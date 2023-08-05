import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_state_model/i_state_model.dart';

abstract interface class IInitializedStateModel<T extends BaseModel,
    Y extends BaseListModel<T>> {
  IStateModel<T, Y> get getStateModel;
}
