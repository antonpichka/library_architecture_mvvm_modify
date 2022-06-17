import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

class Default<T extends BaseModelDomain> extends BaseModelNamedDatabase<T> {
  Default() : super('');

  @override
  T toBaseModelDomain() {
    // TODO: implement toBaseModelDomain
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toMap() {
    // TODO: implement toMap
    throw UnimplementedError();
  }
}