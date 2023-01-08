import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/LoadingViewListViewModel.dart';

class LoadingView
    extends StatefulWidget
{
  @override
  State<LoadingView> createState() => _LoadingViewState();
}

class _LoadingViewState
    extends State<LoadingView>
    with WidgetsBindingObserver
{
  final _lo = LoadingViewListViewModel();

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
    return const Scaffold(
        body: Center(
            child: CircularProgressIndicator()
        )
    );
  }
}