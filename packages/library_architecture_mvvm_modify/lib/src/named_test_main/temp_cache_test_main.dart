import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

Future<void> main() async {
  final tempCacheService = TempCacheService.instance;
  tempCacheService.insertOrUpdateObjectToTempCache("Op", "One");
  final first = tempCacheService.getObjectFromTempCache("Op");
  debugPrint("First: $first");
  tempCacheService.getStreamObjectFromTempCache("main", "Op").listen((event) {
    debugPrint("Listen: ${event.toString()}");
  });
  tempCacheService
      .getStreamObjectFromTempCache("mainTwo", "Op")
      .listen((event) {
    debugPrint("ListenTwo: ${event.toString()}");
  });
  await Future.delayed(const Duration(seconds: 1));
  tempCacheService.insertOrUpdateObjectToTempCache("Op", "Two");
  await Future.delayed(const Duration(seconds: 1));
  tempCacheService.insertOrUpdateObjectToTempCache("Op", "Three");
  tempCacheService
      .getStreamObjectFromTempCache("mainThree", "Op")
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
