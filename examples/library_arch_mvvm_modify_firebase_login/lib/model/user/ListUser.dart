import 'package:library_architecture_mvvm_modify/base_model/base_list_model_named_database.dart';
import 'User.dart';

class ListUser
    extends BaseListModelNamedDatabase<User>
{
  ListUser(List<User> listModel) : super(listModel);
}