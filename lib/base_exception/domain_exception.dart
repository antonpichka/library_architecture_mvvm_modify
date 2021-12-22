


import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';

class DomainException extends BaseException {
  final String _nameError;

  DomainException(
      this._nameError
      );

  String get getNameError => _nameError;

  @override
  String get getSendMessageToTheView => _nameError;

  @override
  String toString() {
    return _nameError;
  }
}