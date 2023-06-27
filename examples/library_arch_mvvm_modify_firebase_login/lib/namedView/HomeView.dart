import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/CircleAvatarWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/IconButtonExitToAppWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/OneUserTextWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/TwoUserTextWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/HomeViewListViewModel.dart';

final class HomeView extends StatefulWidget {
  final User? user;

  const HomeView(this.user);

  @override
  State<HomeView> createState() => _HomeViewState();
}

final class _HomeViewState extends State<HomeView> {
  final _lo = HomeViewListViewModel();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home mvvm modify'),
        actions: <Widget>[
          IconButtonExitToAppWidget(_lo.iconButtonExitToAppWidgetListViewModel),
        ],
      ),
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatarWidget(
                _lo.circleAvatarWidgetListViewModel, widget.user),
            const SizedBox(height: 4),
            OneUserTextWidget(_lo.oneUserTextWidgetListViewModel, widget.user),
            const SizedBox(height: 4),
            TwoUserTextWidget(_lo.twoUserTextWidgetListViewModel, widget.user),
          ],
        ),
      ),
    );
  }
}
