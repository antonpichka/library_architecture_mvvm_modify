import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/HomeView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/LoginView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/MainViewListViewModel.dart';
import 'package:library_architecture_mvvm_modify/base_named_view/base_named_view.dart';

class MainView
    extends StatefulWidget
{
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState
    extends BaseNamedView<MainView,MainViewListViewModel>
{
  _MainViewState() : super(MainViewListViewModel());

  @override
  void initState() {
    super.initState();
    lo.listensCustomStreamUserAndInGeneralZeroTask((User user) {
      lo.setUserUsingGetNPAndInGeneralZeroTask(user);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    lo.getUserFromTempCacheServiceNPAndSetUserAndInGeneralOneTask();
    return StreamBuilder<User>(
        stream: lo.getStreamUserUsingGetNP,
        builder: (BuildContext buildContext, AsyncSnapshot<User> asyncSnapshot)
        {
          if(asyncSnapshot.data == null) {
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          }
          User? user = asyncSnapshot.data;
          switch(user?.getEnumUserForMainView) {
            case EnumUserForMainView.authenticated:
              return HomeView(user);
            case EnumUserForMainView.unauthenticated:
              return LoginView();
            case EnumUserForMainView.localException:
              return Scaffold(
                  body: Center(
                      child: Text(user
                          ?.exceptionController
                          .getMessageForViewByException ?? "null")));
            default:
              return Container();
          }
        });
  }
}