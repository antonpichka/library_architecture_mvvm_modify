import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/ListPasswordInputFirstBranchOne.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/passwordInput/PasswordInputFirstBranchOne.dart';
import 'package:library_architecture_mvvm_modify/base_model/interface_initialized_stream_model/i_initialized_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/default_stream_model.dart';
import 'package:library_architecture_mvvm_modify/utility/interface_stream_model/i_stream_model.dart';

class InitializedStreamPasswordInputFirstBranchOne
    implements
        IInitializedStreamModel<PasswordInputFirstBranchOne,
            ListPasswordInputFirstBranchOne> {
  @override
  IStreamModel<PasswordInputFirstBranchOne, ListPasswordInputFirstBranchOne>?
      initializedStreamModel() {
    return DefaultStreamModel<PasswordInputFirstBranchOne,
            ListPasswordInputFirstBranchOne>(
        PasswordInputFirstBranchOne.getPasswordInputFirstBranchOneForSuccess,
        ListPasswordInputFirstBranchOne
            .getListPasswordInputFirstBranchOneForSuccess);
  }
}
