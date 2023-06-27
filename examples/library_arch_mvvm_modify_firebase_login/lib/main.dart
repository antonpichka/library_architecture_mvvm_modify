import 'package:flutter/material.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/namedService/FirebaseService.dart';
import 'package:library_arch_mvvm_modify_firebase_login/modelQNamedServiceViewModel/userQFirebaseAuthAndTempCacheServiceViewModel/UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/MainView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/namedView/RegistrationView.dart';
import 'package:library_arch_mvvm_modify_firebase_login/utility/Utility.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService().initializeApp();
  await UserQFirebaseAuthAndTempCacheServiceViewModelUsingCustomStreamForCheckAuthAndSaveToTempCache()
      .getCustomStreamUser
      ?.first;
  runApp(App());
}

final class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'LibraryArchMVVMModifyFirebaseLogin',
        theme: ThemeData(primaryColor: Colors.blue),
        initialRoute: "/",
        routes: {
          "/": (context) => MainView(),
          "/$constRegistrationView": (context) => RegistrationView(),
        });
  }
}
