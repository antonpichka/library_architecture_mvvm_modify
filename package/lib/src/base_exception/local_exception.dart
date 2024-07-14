import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

/// Exception Handling
/// Where to use ? - use in 'NamedService','ModelRepository','NamedStreamWState','NamedState' classes
@immutable
final class LocalException extends BaseException {
  /// Who is to blame for this exception?
  /// Where to use ? - here
  final EnumGuilty enumGuilty;

  /// Exception message
  /// Where to use ? - here
  final String? message;

  /// Initialize the parameters 'thisClass', 'enumGuilty', 'key', 'message (optional)'
  /// Where to use ? - use in 'NamedService','ModelRepository','NamedStreamWState','NamedState' classes
  LocalException(Object thisClass, this.enumGuilty, String key, [this.message])
      : super(thisClass, LocalException, key);

  /// Necessary method to show the result to the developer
  /// Where to use ? - anywhere
  @override
  String toString() {
    return "LocalException(enumGuilty: ${enumGuilty.name}, "
        "key: $key, "
        "message (optional): $message)";
  }
}
