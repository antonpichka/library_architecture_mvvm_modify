import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';

class LocalException extends BaseException {
  final String _code;
  final String _message;

  LocalException(this._code, this._message) : super("LocalException");

  String get getCode => _code;

  String get getMessage => _message;

  @override
  String toString() {
    return "$_code : $_message";
  }

  @override
  String exceptionInString() {
    return toString();
  }
}