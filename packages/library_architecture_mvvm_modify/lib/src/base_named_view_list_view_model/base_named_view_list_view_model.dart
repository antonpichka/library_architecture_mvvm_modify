import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseNamedViewListViewModel<T extends BaseDataForNamed> implements IDispose {
  // ModelQNamedServiceViewModel
  // DataForNamedQThereIsStreamStateViewModel
  // NamedUtility

  const BaseNamedViewListViewModel();

  Stream<T> get getStreamDataForNamed;

  T get getDataForNamed;

  Future<String> init();

  void notifyStreamDataForNamed();
}
