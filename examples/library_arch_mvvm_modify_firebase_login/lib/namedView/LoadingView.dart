import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/LoadingViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class LoadingView
    extends StatefulWidget
{
  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState
    extends BaseNamedView<LoadingView,LoadingViewListViewModel >
{
  _LoadingViewState() : super(LoadingViewListViewModel());

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
    return const Scaffold(
        body: Center(
            child: CircularProgressIndicator()
        )
    );
  }
}