import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
abstract base class BaseModelWrapper {
  @protected
  final List<dynamic> listObject;

  const BaseModelWrapper(this.listObject);

  BaseModel createModel();
}
