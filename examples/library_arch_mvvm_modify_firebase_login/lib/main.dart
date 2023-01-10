import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/ListUser.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/User.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForFirebaseUserTIP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/model/user/userForNamed/UserForSuccessWhereParametersEqualsStringNullNP.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndTempCacheServiceViewModel/UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/MainView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/RegistrationView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Utility.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache =
  UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache<User,ListUser>(
      UserForSuccessWhereParametersEqualsStringNullNP(),
      UserForFirebaseUserTIP());
  await userQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache
      .getCustomStreamUser
      ?.first;

  runApp(App());
}

class App
    extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LibraryArchMVVMModifyFirebaseLogin',
        theme: ThemeData(primaryColor: Colors.blue),
        initialRoute: "/",
        routes: {
          "/" : (context) => MainView(),
          "/$constRegistrationView": (context) => RegistrationView(),
        });
  }
}
