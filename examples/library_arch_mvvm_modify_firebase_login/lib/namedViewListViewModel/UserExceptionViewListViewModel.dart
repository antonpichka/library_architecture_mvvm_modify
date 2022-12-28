import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/UserExceptionTextWidgetListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

class UserExceptionViewListViewModel
    extends BaseNamedViewListViewModel
{
  // NamedWidgetListViewModel
  late final UserExceptionTextWidgetListViewModel userExceptionTextWidgetListViewModel;

  UserExceptionViewListViewModel() {
    userExceptionTextWidgetListViewModel = UserExceptionTextWidgetListViewModel();
  }
  
  @override
  void dispose() {
    // TODO: implement dispose
  }
}