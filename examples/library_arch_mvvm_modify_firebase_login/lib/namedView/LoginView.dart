import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/EmailInputWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/GoogleButtonWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/LoginButtonWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/PasswordInputWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/NavigationRegistrationButtonWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/LoginViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class LoginView
    extends StatefulWidget
{
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState
    extends BaseNamedView<LoginView,LoginViewListViewModel>
{
  _LoginViewState() : super(LoginViewListViewModel());

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
      appBar: AppBar(title: const Text('Login mvvm modify')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Align(
          alignment: const Alignment(0, -1 / 3),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                EmailInputWidget(lo.emailInputWidgetListViewModel),
                const SizedBox(height: 8),
                PasswordInputWidget(lo.passwordInputWidgetListViewModel),
                const SizedBox(height: 8),
                LoginButtonWidget(lo.loginButtonWidgetListViewModel),
                const SizedBox(height: 8),
                GoogleButtonWidget(lo.googleButtonWidgetListViewModel),
                const SizedBox(height: 4),
                NavigationRegistrationButtonWidget(lo.navigationRegistrationButtonWidgetListViewModel),
              ],
            ),
          ),
        ),
      ),
    );
  }
}