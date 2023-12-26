import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Provides an exception and is needed as a determinant of success or exception
/// Where to use ? - anywhere
@immutable
final class ExceptionController {
  /// Exception
  /// Where to use ? - here
  final BaseException? _exception;

  /// Initialize the parameter '_exception'
  /// Where to use ? - use in 'Result', 'class
  const ExceptionController.success() : _exception = null;

  /// Initialize the parameter '_exception'
  /// Where to use ? - use in 'Result' class
  const ExceptionController.exception(this._exception);

  /// getKey - get the key from the exception
  /// ParameterException - exception
  /// Where to use ? - anywhere
  @nonVirtual
  String get getKeyParameterException {
    return _exception?.key ?? "";
  }

  /// isWhereNotEqualsNull - where exception is not null
  /// ParameterException - exception
  /// Where to use ? - use in 'NamedViewModel','DataForNamed' classes
  @nonVirtual
  bool isWhereNotEqualsNullParameterException() {
    return _exception != null ? true : false;
  }
}
