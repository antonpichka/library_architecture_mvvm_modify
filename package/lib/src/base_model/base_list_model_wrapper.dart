import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseListModelWrapper {
  @protected
  final List<List<dynamic>> listsListObject;

  const BaseListModelWrapper(this.listsListObject);

  BaseListModel createListModel();
}
