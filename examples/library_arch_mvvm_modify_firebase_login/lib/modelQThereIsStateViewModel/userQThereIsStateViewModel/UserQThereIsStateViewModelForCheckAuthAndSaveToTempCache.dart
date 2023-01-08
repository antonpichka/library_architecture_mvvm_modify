import 'dart:async';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_there_is_state_view_model/base_model_q_there_is_state_view_model.dart';
import 'package:meta/meta.dart';

class UserQThereIsStateViewModelForCheckAuthAndSaveToTempCache<T extends User,Y extends ListUser<T>>
    extends BaseModelQThereIsStateViewModel<T,Y>
{
  @protected
  StreamSubscription<T>? customStreamSubscriptionUser;

  UserQThereIsStateViewModelForCheckAuthAndSaveToTempCache(super.iStreamModelForSuccess);

  @override
  void dispose() {
    customStreamSubscriptionUser?.cancel();
    super.dispose();
  }

  void listensCustomStreamUser(Stream<T>? customStreamUser,Function(User user) callback) {
    customStreamSubscriptionUser = customStreamUser
        ?.listen((event) {
          callback(event);
        });
  }
}