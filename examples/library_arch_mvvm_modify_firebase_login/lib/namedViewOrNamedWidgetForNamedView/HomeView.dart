import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewOrNamedWidgetForNamedViewListViewModel/HomeViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_or_named_widget_for_named_view/base_named_view_or_named_widget_for_named_view.dart';

class HomeView
    extends StatefulWidget
{
  final User user;

  HomeView(this.user);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState
    extends BaseNamedViewOrNamedWidgetForNamedView<HomeView,HomeViewListViewModel>
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
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => lo.deleteUserToFirebaseAuthAndGoogleSignInServiceNPAndInGeneralZeroTask(),
          )
        ],
      ),
      body: Align(
        alignment: const Alignment(0, -1 / 3),
        child: Column(
          mainAxisSize: MainAxisSize.min  ,
          children: <Widget>[
            CircleAvatar(
              radius: 48.0,
              backgroundImage: widget.user.isEqualsNotNullParameterPhoto()
                  ? NetworkImage(widget.user.photo)
                  : null,
              child: widget.user.isEqualsNullParameterPhoto()
                  ? const Icon(Icons.person_outline, size: 48.0)
                  : null,
            ),
            const SizedBox(height: 4),
            Text(widget.user.email, style: textTheme.headline6),
            const SizedBox(height: 4),
            Text(widget.user.name, style: textTheme.headline5),
          ],
        ),
      ),
    );
  }


}