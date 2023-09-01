import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

Future<void> main() async {
  final tempCacheService = TempCacheService.instance;
  tempCacheService.insertOrUpdateObjectToTempCache("Op", "One");
  final first = tempCacheService.getObjectFromTempCache("Op");
  debugPrint("First: $first");
  tempCacheService
      .getStreamObjectFromTempCache("Op")
      .listen((event) {
        debugPrint("Listen: ${event.toString()}");
      });
  tempCacheService.insertOrUpdateObjectToTempCache("Op", "Two");
  await Future.delayed(const Duration(seconds: 1));
  tempCacheService.insertOrUpdateObjectToTempCache("Op", "Three");
}