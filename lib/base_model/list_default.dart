import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

class ListDefault<T extends BaseListModelDomain,Y extends BaseModelNamedDatabase> extends BaseListModelNamedDatabase<T,Y> {
  ListDefault(List<BaseModelNamedDatabase<BaseModelDomain>> listModelNamedDatabase) : super(listModelNamedDatabase);

  @override
  T toBaseListModelDomain() {
    // TODO: implement toBaseListModelDomain
    throw UnimplementedError();
  }


}