import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/ConfirmedPasswordInputWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/EmailInputWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/PasswordInputWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/SignUpButtonWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/RegistrationViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class RegistrationView
    extends StatefulWidget
{
  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState
    extends BaseNamedView<RegistrationView,RegistrationViewListViewModel>
{
  _RegistrationViewState() : super(RegistrationViewListViewModel());

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
      appBar: AppBar(title: Text('Registration mvvm modify')),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Align(
          alignment: Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              EmailInputWidget(lo.emailInputWidgetListViewModel),
              SizedBox(height: 8),
              PasswordInputWidget(lo.passwordInputWidgetListViewModel),
              SizedBox(height: 8),
              ConfirmedPasswordInputWidget(lo.confirmedPasswordInputWidgetListViewModel),
              SizedBox(height: 8),
              SignUpButtonWidget(lo.signUpButtonWidgetListViewModel),
            ],
          ),
        ),
      ),
    );
  }
}