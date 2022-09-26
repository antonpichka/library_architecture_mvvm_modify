import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_object.dart';

abstract class BaseModelNamedDatabase<T extends BaseModel>
    extends BaseObject
{
  String uniqueId;

  BaseModelNamedDatabase(this.uniqueId);

  T toBaseModel();
  Map<String, dynamic> toMap();
}