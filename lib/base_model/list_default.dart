import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

class ListDefault extends BaseListModelNamedDatabase {
  ListDefault(List<BaseModelNamedDatabase<BaseModelDomain>> listModelNamedDatabase) : super(listModelNamedDatabase);

  @override
  BaseListModelDomain<dynamic, BaseModelDomain> toBaseListModelDomain() {
    // TODO: implement toBaseListModelDomain
    throw UnimplementedError();
  }
}