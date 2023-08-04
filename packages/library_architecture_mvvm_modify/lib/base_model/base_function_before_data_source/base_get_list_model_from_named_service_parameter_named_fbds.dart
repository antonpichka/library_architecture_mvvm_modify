import 'package:library_architecture_mvvm_modify/base_model/base_list_model.dart';

/// This class is designed to validate the model and calculate it before passing it to the data source method.
/// There are 2 generic types:
/// 1 generic type returns the correct result and must match the returned generic data source.
/// 2 generic type, sends the main parameter, which will be passed to the data source, after processing in fbds.
/// An example of a class name in a real project: GetListMovieFromSqfliteServiceParameterDoubleFBDS
/// ParameterDouble - with a parameter (with such an SQL query (SELECT * FROM movies WHERE rating = :rating;)
abstract base class BaseGetListModelFromNamedServiceParameterNamedFBDS<
    X extends BaseListModel, C extends Object> {
  X? getListModelFromNamedServiceParameterNamedFBDS(
      C? parameter);
}
