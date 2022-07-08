import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';

class LocalException extends BaseException {
  final String _code;
  final String _message;

  LocalException(String nameClassWhereWasTheMistake,this._code, this._message) : super((LocalException).toString(),nameClassWhereWasTheMistake);

  String get getCode => _code;

  String get getMessage => _message;

  @override
  String exceptionInString() {
    return "\n - Code($_code\n)\n - Message($_message\n)";
  }
}