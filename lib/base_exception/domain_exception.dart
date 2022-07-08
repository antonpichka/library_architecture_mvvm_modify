import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';

class DomainException extends BaseException {
  final String _nameError;

  DomainException(String nameClassWhereWasTheMistake,this._nameError) : super((DomainException).toString(),nameClassWhereWasTheMistake);

  String get getNameError => _nameError;

  @override
  String exceptionInString() {
    return "\n - NameError($_nameError\n)";
  }
}