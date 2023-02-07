import 'package:library_architecture_mvvm_modify/utility/result.dart';

/// This class is necessary to access the database or the network,
/// as it is a DataSource, and such classes as "ModelQNamedServiceViewModel" implement "DataSource"
/// for the main purpose and minimize the code, since inside the "BaseModelQNamedServiceModel"
/// there are references to the "DataSource" classes, and manipulate DataSource and FBDS classes
abstract class DeleteListModelToNamedServiceParameterNamedDataSource<
    T extends Object, Y extends Object> {
  Future<Result<T>?> deleteListModelToNamedServiceParameterNamedDS(
      Y? parameter);
}
