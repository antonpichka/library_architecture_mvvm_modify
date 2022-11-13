import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelNamedBackgroundModel/UserFirebaseAuthAndTempCacheBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/MainView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/FirebaseAuthService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/namedService/TempCacheService.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final userFirebaseAuthAndTempCacheBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache = UserFirebaseAuthAndTempCacheBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache(FirebaseAuthService.getFirebaseAuth,TempCacheService.getTempCache);
  await userFirebaseAuthAndTempCacheBackgroundModelUsingCustomStreamForCheckAuthAndSaveToTempCache.getCustomStreamUserFirebaseAuthAndTempCache.first;

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
        theme: ThemeData(
            primaryColor: Colors.blue),
        initialRoute: "/",
        routes: {
          "/" : (context) => MainView()
        });
  }
}
