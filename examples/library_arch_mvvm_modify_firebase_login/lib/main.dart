import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceBackgroundModel/userQFirebaseAuthAndTempCacheServiceBackgroundModel/UserQFirebaseAuthAndTempCacheServiceBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedViewOrNamedWidgetForNamedView/MainView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthAndTempCacheService.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final userQFirebaseAuthAndTempCacheServiceBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache = UserQFirebaseAuthAndTempCacheServiceBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache(FirebaseAuthAndTempCacheService());
  await userQFirebaseAuthAndTempCacheServiceBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache.getCustomStreamUser.first;

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
          "/" : (context) => MainView()
        });
  }
}
