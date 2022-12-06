import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/HomeViewListViewModel.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedWidget/CircleAvatarWidget.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedWidget/IconButtonExitToAppWidget.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class HomeView
    extends StatefulWidget
{
  final User? user;

  HomeView(this.user);

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
        title: Text('Home mvvm modify'),
        actions: <Widget>[
          IconButtonExitToAppWidget(lo.userQFirebaseAuthAndGoogleSignInServiceUsingDeleteNPForSignOutListViewModelForIconButtonExitToAppWidget),
        ],
      ),
      body: Align(
        alignment: Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min  ,
          children: <Widget>[
            CircleAvatarWidget(widget.user),
            SizedBox(height: 4),
            Text(widget.user?.email ?? "null", style: textTheme.headline6),
            SizedBox(height: 4),
            Text(widget.user?.name ?? "null", style: textTheme.headline5),
          ],
        ),
      ),
    );
  }


}