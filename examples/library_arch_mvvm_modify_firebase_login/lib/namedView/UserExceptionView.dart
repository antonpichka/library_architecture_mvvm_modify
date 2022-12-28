import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/UserExceptionTextWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/UserExceptionViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class UserExceptionView
    extends StatefulWidget
{
  final User? user;

  const UserExceptionView(this.user);

  @override
  State<UserExceptionView> createState() => _UserExceptionViewState();
}

class _UserExceptionViewState
    extends BaseNamedView<UserExceptionView,UserExceptionViewListViewModel>
{
  _UserExceptionViewState() : super(UserExceptionViewListViewModel());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: UserExceptionTextWidget(lo.userExceptionTextWidgetListViewModel,widget.user)
        )
    );
  }
}