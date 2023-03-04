import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamUser implements IInitializedStreamModel<User, ListUser> {
  @override
  IStreamModel<User, ListUser>? initializedStreamModel() {
    return DefaultStreamModel<User, ListUser>(
        User.getUserForSuccess, ListUser.getListUserForSuccess);
  }
}
