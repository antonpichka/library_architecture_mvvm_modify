import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';

class DomainException extends BaseException {
  final String _nameError;

  DomainException(Object thisClass,this._nameError) : super((DomainException).toString(),thisClass);

  String get getNameError => _nameError;

  @override
  String exceptionInString() {
    return "NameError: $_nameError";
  }
}