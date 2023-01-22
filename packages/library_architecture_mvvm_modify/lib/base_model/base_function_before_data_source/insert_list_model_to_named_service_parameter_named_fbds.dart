import 'package:library_architecture_mvvm_modify/utility/result.dart';

/// This class is designed to validate the model and calculate it before passing it to the data source method.
/// There are 3 generic types:
/// 1 generic type returns the correct result and must match the returned generic data source.
/// 2 generic type, sends the main parameter, which will be passed to the data source, after processing in fbds.
/// 3 generic type, sends additional data for verification and calculation, they are optional, and null can be assigned there
/// An example of a class name in a real project: InsertListMovieToSqfliteServiceParameterListMovieFBDSUsingInsertListParameterListMovie
/// ParameterListMovie - with a parameter for insert list
/// Using - is specified because it is also specified in the ModelQNamedServiceViewModel file name, and this binds fbds to this object, by file name.
/// This is done so as not to get confused where and which fbds is used
abstract class InsertListModelToNamedServiceParameterNamedFBDS<Z extends Object,X extends Object,C extends Object> {
  Result<Z>? insertListModelToNamedServiceParameterNamed(
      X? parameter,
      C? parameterForFBDS);
}