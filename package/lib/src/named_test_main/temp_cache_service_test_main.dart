import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

Future<void> main() async {
  final tempCacheService = TempCacheService.instance;
  final key = "Key";
  tempCacheService.updateWNotificationFromKeyTempCacheAndValueParameterOne(
      key, "One");
  final fromKeyTempCacheParameterTempCache = tempCacheService
      .getFromKeyTempCacheAndDefaultValueParameterTempCache(key, "");
  debugPrint(
      "FromKeyTempCacheParameterTempCache: $fromKeyTempCacheParameterTempCache");
  tempCacheService.listenStreamFromKeyTempCacheAndCallbackParameterOne(key,
      (event) {
    debugPrint("Listen: $event");
  });
  await Future.delayed(const Duration(seconds: 1));
  tempCacheService.updateWNotificationFromKeyTempCacheAndValueParameterOne(
      key, "Two");
  tempCacheService.listenStreamFromKeyTempCacheAndCallbackParameterOne(key,
      (event) {
    debugPrint("ListenTwo: $event");
  });
  await Future.delayed(const Duration(seconds: 1));
  tempCacheService.updateWNotificationFromKeyTempCacheAndValueParameterOne(
      key, "Three");
  tempCacheService.listenStreamFromKeyTempCacheAndCallbackParameterOne(key,
      (event) {
    debugPrint("ListenThree: $event");
  });
}
// EXPECTED OUTPUT:
//
// FromKeyTempCacheParameterTempCache: One
// Listen: Two
// Listen: Three
// ListenTwo: Three
//
// Process finished with exit code 0
