import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';

class LocalException
    extends BaseException
{
  final String _code;
  final String _message;

  LocalException(
      Object thisClass,
      this._code,
      this._message)
      : super((LocalException).toString(),thisClass);

  String get getCode => _code;

  String get getMessage => _message;

  @override
  String exceptionInString() {
    return "Code: $_code | Message: $_message";
  }
}