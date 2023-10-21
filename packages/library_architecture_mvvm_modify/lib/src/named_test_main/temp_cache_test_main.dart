import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

Future<void> main() async {
  final tempCacheService = TempCacheService.instance;
  tempCacheService.updateObjectFromKeyTempCacheAndValueParameterTempCache(
      "Op", "One");
  final object =
      tempCacheService.getObjectFromKeyTempCacheParameterTempCache("Op");
  debugPrint("First: $object");
  tempCacheService
      .getStreamObjectFromKeyNameStreamAndKeyTempCacheAndMillisecondsParametersTempCacheAndNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
          "main", "Op")
      .listen((event) {
    debugPrint("Listen: ${event.toString()}");
  });
  tempCacheService
      .getStreamObjectFromKeyNameStreamAndKeyTempCacheAndMillisecondsParametersTempCacheAndNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
          "mainTwo", "Op")
      .listen((event) {
    debugPrint("ListenTwo: ${event.toString()}");
  });
  await Future.delayed(const Duration(seconds: 1));
  tempCacheService.updateObjectFromKeyTempCacheAndValueParameterTempCache(
      "Op", "Two");
  await Future.delayed(const Duration(seconds: 1));
  tempCacheService.updateObjectFromKeyTempCacheAndValueParameterTempCache(
      "Op", "Three");
  tempCacheService
      .getStreamObjectFromKeyNameStreamAndKeyTempCacheAndMillisecondsParametersTempCacheAndNameStreamWTempCacheWIsHaveYouReceivedTheLatestData(
          "mainThree", "Op")
      .listen((event) {
    debugPrint("ListenThree: ${event.toString()}");
  });
  // EXPECTED OUTPUT:
  //
  // First: One
  // Listen: One
  // ListenTwo: One
  // Listen: Two
  // ListenTwo: Two
  // Listen: Three
  // ListenTwo: Three
  // ListenThree: Three
  //
  // Process finished with exit code -1
}
