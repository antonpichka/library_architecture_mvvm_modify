import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

abstract class IInitializedStreamModel<T extends BaseModel,Y extends BaseListModel<T>> {
  // Default class: return DefaultStreamModel<User,ListUser>(User.success(""),ListUser.success([]));
  IStreamModel<T,Y>? initializedStreamModel();
}