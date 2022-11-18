import 'package:flutter/material.dart';
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
      appBar: AppBar(title: Text('Login mvvm modify')),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Align(
          alignment: Alignment(0, -1 / 3),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 16),
              //  EmailInputWidgetForLoginView(),
                SizedBox(height: 8),
              //  _PasswordInput(),
                SizedBox(height: 8),
              //  _LoginButton(),
                SizedBox(height: 8),
              //  _GoogleLoginButton(),
                SizedBox(height: 4),
              //  _SignUpButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}