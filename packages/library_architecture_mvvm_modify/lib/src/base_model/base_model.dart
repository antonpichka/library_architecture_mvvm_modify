import 'package:meta/meta.dart';

@immutable
abstract base class BaseModel {
  final String uniqueId;

  const BaseModel(this.uniqueId);

  BaseModel get getClone;
}
