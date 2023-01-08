import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/UserExceptionTextWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/UserExceptionViewListViewModel.dart';

class UserExceptionView
    extends StatefulWidget
{
  final User? user;

  const UserExceptionView(this.user);

  @override
  State<UserExceptionView> createState() => _UserExceptionViewState();
}

class _UserExceptionViewState
    extends State<UserExceptionView>
    with WidgetsBindingObserver
{
  final _lo = UserExceptionViewListViewModel();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _lo.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: UserExceptionTextWidget(_lo.userExceptionTextWidgetListViewModel,widget.user)
        )
    );
  }
}