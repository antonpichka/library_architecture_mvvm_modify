import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';

class ListDefault<T extends BaseListModel,Y extends BaseModelNamedDatabase>
    extends BaseListModelNamedDatabase<T,Y>
{
  ListDefault(List<BaseModelNamedDatabase<BaseModel>> listModelNamedDatabase) : super(listModelNamedDatabase);

  @override
  T toBaseListModel() {
    // TODO: implement toBaseListModelDomain
    throw UnimplementedError();
  }


}