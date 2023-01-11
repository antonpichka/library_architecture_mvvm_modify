import 'dart:async';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class UserQThereIsStateViewModel<T extends User,Y extends ListUser<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  @protected
  StreamSubscription<T?>? customStreamSubscriptionUser;

  UserQThereIsStateViewModel(super.iInitializedStreamModel);

  @override
  void dispose() {
    customStreamSubscriptionUser?.cancel();
    super.dispose();
  }

  Stream<T?>? get getStreamUser {
    return getStreamModel;
  }

  T? get getUser {
    return getModel;
  }

  set setUser(T user) {
    setModel = user;
  }

  void notifyStreamUser() {
    notifyStreamModel();
  }

  void customListenStreamUser(Stream<T?>? customStreamUser,Function(User? user) callback) {
    customStreamSubscriptionUser = customStreamUser
        ?.listen((event) {
          callback(event);
        });
  }
}