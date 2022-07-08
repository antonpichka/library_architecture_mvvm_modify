import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class ResponseGenericBoolAndDomainException extends Response<bool,DomainException> {
  ResponseGenericBoolAndDomainException.success(bool success) : super.success(success);
  ResponseGenericBoolAndDomainException.exception(DomainException exception) : super.exception(exception);
}