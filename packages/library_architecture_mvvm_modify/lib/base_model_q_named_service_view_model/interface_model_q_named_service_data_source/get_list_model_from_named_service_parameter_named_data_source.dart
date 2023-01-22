import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

/// This class is necessary to access the database or the network,
/// as it is a DataSource, and such classes as "ModelQNamedServiceViewModel" implement "DataSource"
/// for the main purpose and minimize the code, since inside the "BaseModelQNamedServiceModel"
/// there are references to the "DataSource" classes, and manipulate DataSource and FBDS classes
abstract class GetListModelFromNamedServiceParameterNamedDataSource<T extends BaseListModel,Y extends Object> {
  Future<T?> getListModelFromNamedServiceParameterNamedDS(Y? parameter);
}