import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_clone_stream_model_for_success/i_stream_model_for_success.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class CloneStreamUserForSuccess
    implements IStreamModelForSuccess<User,ListUser<User>>
{
  @override
  IStreamModel<User, ListUser<User>>? streamModelForSuccess() {
    return DefaultStreamModel<User,ListUser<User>>(User.getUserForSuccess, ListUser.success([]));
  }
}