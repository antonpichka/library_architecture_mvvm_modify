import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/UserExceptionTextWidgetListViewModel.dart';

base class UserExceptionTextWidget extends StatelessWidget {
  @protected
  final UserExceptionTextWidgetListViewModel
      userExceptionTextWidgetListViewModel;
  @protected
  final User? user;

  const UserExceptionTextWidget(
      this.userExceptionTextWidgetListViewModel, this.user);

  @override
  Widget build(BuildContext context) {
    return Text(user!.exceptionController.getMessageForViewParameterException!);
  }
}
