import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_architecture_mvvm_modify/base_model_q_named_service_background_model/base_model_q_named_service_background_model.dart';

abstract class UserQNamedServiceBackgroundModel<T extends User,Y extends ListUser<T>,DataSource extends Object>
    extends BaseModelQNamedServiceBackgroundModel<T,Y,DataSource>
{
  UserQNamedServiceBackgroundModel.thereIsDataSource(super.dataSource) : super.thereIsDataSource();
}