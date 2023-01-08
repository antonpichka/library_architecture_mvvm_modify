import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/EmailInputWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/GoogleButtonWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/LoginButtonWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/PasswordInputWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/NavigationRegistrationButtonWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/LoginViewListViewModel.dart';

class LoginView
    extends StatefulWidget
{
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState
    extends State<LoginView>
    with WidgetsBindingObserver
{
  final _lo = LoginViewListViewModel();

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
                EmailInputWidget(_lo.emailInputWidgetListViewModel),
                const SizedBox(height: 8),
                PasswordInputWidget(_lo.passwordInputWidgetListViewModel),
                const SizedBox(height: 8),
                LoginButtonWidget(_lo.loginButtonWidgetListViewModel),
                const SizedBox(height: 8),
                GoogleButtonWidget(_lo.googleButtonWidgetListViewModel),
                const SizedBox(height: 4),
                NavigationRegistrationButtonWidget(_lo.navigationRegistrationButtonWidgetListViewModel),
              ],
            ),
          ),
        ),
      ),
    );
  }
}