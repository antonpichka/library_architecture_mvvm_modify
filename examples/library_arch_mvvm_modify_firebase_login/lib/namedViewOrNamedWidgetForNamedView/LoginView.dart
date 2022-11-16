import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_or_named_widget_for_named_view/base_named_view_or_named_widget_for_named_view.dart';

class LoginView
    extends StatefulWidget
{
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState
    extends BaseNamedViewOrNamedWidgetForNamedView<LoginView,LoginViewListViewModel>
{
  _LoginViewState() : super(LoginViewListViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Align(
          alignment: const Alignment(0, -1 / 3),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/bloc_logo_small.png',
                  height: 120,
                ),
                const SizedBox(height: 16),
                _EmailInput(),
                const SizedBox(height: 8),
                _PasswordInput(),
                const SizedBox(height: 8),
                _LoginButton(),
                const SizedBox(height: 8),
                _GoogleLoginButton(),
                const SizedBox(height: 4),
                _SignUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}