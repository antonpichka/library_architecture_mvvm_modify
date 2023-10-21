import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

enum EnumGuiltyForLocalException { developer, device, user }

@immutable
final class LocalException extends BaseException {
  final EnumGuiltyForLocalException enumGuiltyForLocalException;
  final String? message;

  LocalException(Object thisClass, this.enumGuiltyForLocalException, String key,
      [this.message])
      : super(thisClass, key, LocalException);

  @protected
  @override
  String get getStringWhereDebugPrintExceptionParametersKeyAndNamed {
    return "Key: $key | "
        "EnumGuiltyForLocalException: ${enumGuiltyForLocalException.name} | "
        "Message (optional): ${message ?? ""}";
  }
}
