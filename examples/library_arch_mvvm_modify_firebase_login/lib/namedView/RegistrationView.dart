import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/ConfirmedPasswordInputWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/EmailInputWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/PasswordInputWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/SignUpButtonWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/RegistrationViewListViewModel.dart';

class RegistrationView
    extends StatefulWidget
{
  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState
    extends State<RegistrationView>
    with WidgetsBindingObserver
{
  final _lo = RegistrationViewListViewModel();

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
      appBar: AppBar(title: const Text('Registration mvvm modify')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Align(
          alignment: const Alignment(0, -1 / 3),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              EmailInputWidget(_lo.emailInputWidgetListViewModel),
              const SizedBox(height: 8),
              PasswordInputWidget(_lo.passwordInputWidgetListViewModel),
              const SizedBox(height: 8),
              ConfirmedPasswordInputWidget(_lo.confirmedPasswordInputWidgetListViewModel),
              const SizedBox(height: 8),
              SignUpButtonWidget(_lo.signUpButtonWidgetListViewModel),
            ],
          ),
        ),
      ),
    );
  }
}