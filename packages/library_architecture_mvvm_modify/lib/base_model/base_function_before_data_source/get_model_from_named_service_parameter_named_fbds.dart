import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

/// This class is designed to validate the model and calculate it before passing it to the data source method.
/// There are 3 generic types:
/// 1 generic type returns the correct result and must match the returned generic data source.
/// 2 generic type, sends the main parameter, which will be passed to the data source, after processing in fbds.
/// 3 generic type, sends additional data for verification and calculation, they are optional, and null can be assigned there
/// An example of a class name in a real project: GetMovieFromSqfliteServiceParameterDoubleFBDSUsingGetParameterDoubleForRating
/// ParameterDouble - with a parameter (with such an SQL query (SELECT * FROM movies WHERE rating = :rating LIMIT 1;)
/// Using - is specified because it is also specified in the ModelQNamedServiceViewModel file name, and this binds fbds to this object, by file name.
/// This is done so as not to get confused where and which fbds is used
abstract base class GetModelFromNamedServiceParameterNamedFBDS<
    Z extends BaseModel, X extends Object, C extends Object> {
  Z? getModelFromNamedServiceParameterNamed(X? parameter, C? parameterForFBDS);
}
