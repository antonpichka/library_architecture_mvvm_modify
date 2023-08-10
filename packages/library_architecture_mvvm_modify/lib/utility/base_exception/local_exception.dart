import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';
import 'package:meta/meta.dart';

enum EnumGuiltyForLocalException { developer, device, user }

final class LocalException extends BaseException {
  final EnumGuiltyForLocalException enumGuiltyForLocalException;
  final String? message;

  LocalException(
      Object thisClass, this.enumGuiltyForLocalException, String key, [this.message])
      : super(thisClass, LocalException, key);

  @protected
  @override
  String get exceptionInStringForDebugPrintException {
    return "Key: $key | "
        "EnumGuiltyForLocalException: ${enumGuiltyForLocalException.name} | "
        "Message (optional): ${message ?? ""}";
  }
}
