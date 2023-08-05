import 'package:library_architecture_mvvm_modify/base_data_for_named/base_data_for_named.dart';
import 'package:library_architecture_mvvm_modify/utility/i_dispose.dart';

abstract interface class IStreamStateDataForNamed<T extends BaseDataForNamed>
    implements IDispose {
  Stream<T?> get getStreamDataForNamed;

  T? get getDataForNamed;

  set setDataForNamed(T? dataForNamed);

  void notifyStreamDataForNamed();
}
