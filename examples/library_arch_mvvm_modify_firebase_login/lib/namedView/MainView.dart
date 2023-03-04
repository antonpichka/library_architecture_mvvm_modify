import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/HomeView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/LoadingView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/LoginView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/UserExceptionView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewListViewModel/MainViewListViewModel.dart';

class MainView extends StatefulWidget {
  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final _lo = MainViewListViewModel();

  @override
  void initState() {
    super.initState();
    _lo.customListenStreamUserAndInGeneralZeroTask();
  }

  @override
  void dispose() {
    _lo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _lo.getUserFromTempCacheServiceNPAndInGeneralOneTask();
    return StreamBuilder<User?>(
        stream: _lo.getStreamUser,
        builder:
            (BuildContext buildContext, AsyncSnapshot<User?> asyncSnapshot) {
          if (asyncSnapshot.data == null) {
            return LoadingView();
          }
          User? user = asyncSnapshot.data;
          switch (user?.getEnumUserForMainView) {
            case EnumUserForMainView.authenticated:
              return HomeView(user);
            case EnumUserForMainView.unauthenticated:
              return LoginView();
            case EnumUserForMainView.localException:
              return UserExceptionView(user);
            default:
              return Container();
          }
        });
  }
}
