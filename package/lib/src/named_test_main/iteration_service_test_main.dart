import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

void main() {
  TempCacheProvider();
  TempCacheProvider();
  TempCacheProvider();
  TempCacheProvider();
  TempCacheProvider();
  debugPrint(
      "Iteration: ${IterationService.instance.newValueParameterIteration()}");
}
// EXPECTED OUTPUT:
//
// Iteration: 5
//
// Process finished with exit code 0
