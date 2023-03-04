import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/OneUserTextWidgetListViewModel.dart';

class OneUserTextWidget extends StatelessWidget {
  @protected
  final OneUserTextWidgetListViewModel oneUserTextWidgetListViewModel;
  @protected
  final User? user;

  const OneUserTextWidget(this.oneUserTextWidgetListViewModel, this.user);

  @override
  Widget build(BuildContext context) {
    return Text(user?.getOneParametersNamedForOneUserTextWidget ?? "",
        style: buildStyle(context));
  }

  @protected
  TextStyle? buildStyle(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return textTheme.headline6;
  }
}
