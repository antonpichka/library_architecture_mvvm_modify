import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

Future<void> main() async {
  final tempCacheProvider = TempCacheProvider();
  final key = "key";
  final getKey = tempCacheProvider.getNamed<String>(key, "default");
  debugPrint("GetKey: $getKey");
  tempCacheProvider.listenNamed(key, (event) {
    debugPrint("Listen: $event");
  });
  await Future.delayed(const Duration(seconds: 1));
  tempCacheProvider.updateWNotify(key, "Two");
  tempCacheProvider.dispose([key]);
  tempCacheProvider.listenNamed(key, (event) {
    debugPrint("ListenTwo: $event");
  });
  await Future.delayed(const Duration(seconds: 1));
  tempCacheProvider.updateWNotify(key, "Three");
}
// EXPECTED OUTPUT:
//
// GetKey: default
// Listen: Two
// ListenTwo: Three
//
// Process finished with exit code 0
