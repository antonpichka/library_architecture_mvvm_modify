import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

Future<void> main() async {
  final tempCacheService = TempCacheService.instance;
  final key = "Key";
  tempCacheService
      .updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(
          key, "One");
  final object = tempCacheService.getFromKeyTempCacheParameterTempCache(key);
  debugPrint("Object: $object");
  final streamSubscription = tempCacheService
      .getStreamFromKeyTempCacheParameterOne(key)
      .listen((event) {
    debugPrint("Listen: ${event.toString()}");
  });
  tempCacheService.getStreamFromKeyTempCacheParameterOne(key).listen((event) {
    debugPrint("ListenTwo: ${event.toString()}");
  });
  await streamSubscription.cancel();
  await Future.delayed(const Duration(seconds: 1));
  tempCacheService
      .updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(
          key, "Two");
  await Future.delayed(const Duration(seconds: 1));
  tempCacheService
      .updateWhereStreamNotificationIsPossibleFromKeyTempCacheAndValueParametersTwo(
          key, "Three");
  tempCacheService.getStreamFromKeyTempCacheParameterOne(key).listen((event) {
    debugPrint("ListenThree: ${event.toString()}");
  });
  // EXPECTED OUTPUT:
  //
  // Object: One
  // ListenTwo: Two
  // ListenTwo: Three
  //
  // Process finished with exit code 0
}
