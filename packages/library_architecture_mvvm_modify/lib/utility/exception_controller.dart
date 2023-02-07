import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/utility/base_exception/network_exception.dart';
import 'package:meta/meta.dart';

enum EnumWhatIsTheException {
  noException,
  localException,
  networkException,
  otherException
}

/// This class is needed to manage the exception and provide
/// the necessary information to the developer about the error.
class ExceptionController {
  final EnumWhatIsTheException enumWhatIsTheException;
  final BaseException? _exception;

  ExceptionController.success()
      : enumWhatIsTheException = EnumWhatIsTheException.noException,
        _exception = null;

  ExceptionController.exception(this._exception)
      : enumWhatIsTheException = _exception is LocalException
            ? EnumWhatIsTheException.localException
            : _exception is NetworkException
                ? EnumWhatIsTheException.networkException
                : EnumWhatIsTheException.otherException;

  /// We get a message for the view from the exception parameter,
  /// if there was no exception, this method will return null
  @nonVirtual
  String? get getMessageForViewParameterException {
    return _exception?.getMessageForView;
  }

  /// If the exception is not null then it will return true.
  /// In general, if you want to check if there is an exception,
  /// then true is when you have an exception
  @nonVirtual
  bool isNotEqualsNullParameterException() {
    if (_exception == null) {
      return false;
    }
    return true;
  }
}
