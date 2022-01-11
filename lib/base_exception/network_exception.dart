
import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';

class NetworkException extends BaseException {
  final int _statusCode;
  final String _nameStatusCode;
  final String _descriptionStatusCode;

  NetworkException(
      this._statusCode,
      this._nameStatusCode,
      this._descriptionStatusCode
      );

  int get getStatusCode {
    return _statusCode;
  }

  String get getNameStatusCode {
    return _nameStatusCode;
  }

  String get getDescriptionStatusCode {
    return _descriptionStatusCode;
  }

  @override
  String toString() {
    return "$_statusCode : $_nameStatusCode : $_descriptionStatusCode";
  }
}
