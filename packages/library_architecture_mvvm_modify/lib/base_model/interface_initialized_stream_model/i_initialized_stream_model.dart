import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

///  This class is designed to initialize "StreamModel" and if you need to change the implementation of "StreamModel"
///  you can write another class with this initializer, and later change it in the "ModelQNamedServiceViewModel"
///  component in the constructor to another class
abstract class IInitializedStreamModel<T extends BaseModel,Y extends BaseListModel<T>> {
  // Default class: return DefaultStreamModel<User,ListUser>(User.success(""),ListUser.success([]));
  IStreamModel<T,Y>? initializedStreamModel();
}