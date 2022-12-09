import 'package:flutter/material.dart';
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
    // TODO: implement build
    throw UnimplementedError();
  }
}