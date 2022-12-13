import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/CircleAvatarWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/namedWidget/IconButtonExitToAppWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/HomeViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class HomeView
    extends StatefulWidget
{
  final User? user;

  const HomeView(this.user);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState
    extends BaseNamedView<HomeView,HomeViewListViewModel>
{
  _HomeViewState() : super(HomeViewListViewModel());

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
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home mvvm modify'),
        actions: <Widget>[
          IconButtonExitToAppWidget(lo.iconButtonExitToAppWidgetListViewModel),
        ],
      ),
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min  ,
          children: <Widget>[
            CircleAvatarWidget(widget.user),
            const SizedBox(height: 4),
            Text(widget.user!.getOneParametersNamedForHomeView, style: textTheme.headline6),
            const SizedBox(height: 4),
            Text(widget.user!.getTwoParametersNamedForHomeView, style: textTheme.headline5),
          ],
        ),
      ),
    );
  }


}