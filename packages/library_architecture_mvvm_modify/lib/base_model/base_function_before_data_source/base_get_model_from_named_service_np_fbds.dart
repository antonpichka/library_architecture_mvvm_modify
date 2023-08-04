import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

/// This class is designed to validate the model and calculate it before passing it to the data source method.
/// There are 2 generics types:
/// 1 generic type returns the correct result, and must match the returned data source generic.
/// 2 generic type, sends additional data for verification and calculation, they are optional, and you can assign null there
/// An example of a class name in a real project: GetMovieFromSqfliteServiceNPFBDS
/// NP - no parameter (with such an SQL query (SELECT * FROM movies LIMIT 1;)
abstract base class BaseGetModelFromNamedServiceNPFBDS<X extends BaseModel,
    C extends Object> {
  X? getModelFromNamedServiceNPFBDS(C? parameter);
}
