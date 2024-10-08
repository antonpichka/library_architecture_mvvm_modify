import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class LocalException extends BaseException {
  final EnumGuilty enumGuilty;
  final String? message;

  LocalException(Object thisClass, this.enumGuilty, String key, [this.message])
      : super(thisClass, LocalException, key);

  @override
  String toString() {
    return "LocalException(enumGuilty: ${enumGuilty.name}, "
        "key: $key, "
        "message (optional): $message)";
  }
}
