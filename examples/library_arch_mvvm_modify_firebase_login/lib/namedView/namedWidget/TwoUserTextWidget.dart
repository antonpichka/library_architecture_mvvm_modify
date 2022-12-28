import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/TwoUserTextWidgetListViewModel.dart';

class TwoUserTextWidget
    extends StatelessWidget
{
  @protected
  final TwoUserTextWidgetListViewModel twoUserTextWidgetListViewModel;
  @protected
  final User? user;

  const TwoUserTextWidget(this.twoUserTextWidgetListViewModel,this.user);

  @override
  Widget build(BuildContext context) {
    return Text(
        user?.getOneParametersNamedForTwoUserTextWidget ?? "",
        style: buildStyle(context)
    );
  }

  @protected
  TextStyle? buildStyle(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return textTheme.headline5;
  }

}