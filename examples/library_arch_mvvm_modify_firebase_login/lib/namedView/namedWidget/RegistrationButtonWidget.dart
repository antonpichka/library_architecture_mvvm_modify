import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/namedWidgetListViewModel/RegistrationButtonWidgetListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Utility.dart';

class RegistrationButtonWidget
    extends StatelessWidget
{
  final RegistrationButtonWidgetListViewModel _lo;

  RegistrationButtonWidget(this._lo);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextButton(
      key: const Key('loginForm_createAccount_flatButton'),
      onPressed: () => _lo.checkIsLoadingAndInGeneralZeroTask(() => Navigator.of(context).pushNamed("/$constRegistrationView")),
      child: Text(
        'CREATE ACCOUNT',
        style: TextStyle(color: theme.primaryColor),
      ),
    );
  }
}