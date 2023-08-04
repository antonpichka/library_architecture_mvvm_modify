import 'package:library_architecture_mvvm_modify/utility/result.dart';

/// This class is designed to validate the model and calculate it before passing it to the data source method.
/// There are 2 generic types:
/// 1 generic type returns the correct result and must match the returned generic data source.
/// 2 generic type, sends the main parameter, which will be passed to the data source, after processing in fbds.
/// An example of a class name in a real project: DeleteMovieToSqfliteServiceParameterStringFBDS
/// ParameterString - with a parameter for string
abstract base class BaseDeleteModelToNamedServiceParameterNamedFBDS<X extends Object, C extends Object> {
  Result<X>? deleteModelToNamedServiceParameterNamedFBDS(
      C? parameter);
}
