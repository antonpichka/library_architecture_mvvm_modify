import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';

/// Who is in fault?
enum EnumGuiltyForLocalException { developer, device, user }

/// An example of the extends of the "BaseException" class, named LocalException
final class LocalException extends BaseException {
  final EnumGuiltyForLocalException enumGuiltyForLocalException;
  final String message;

  LocalException(
      Object thisClass, this.enumGuiltyForLocalException, this.message)
      : super(thisClass, LocalException);

  LocalException.whereTheUserIsGuilty(Object thisClass, this.message)
      : enumGuiltyForLocalException = EnumGuiltyForLocalException.user,
        super(thisClass, LocalException);

  /// Show message for view
  @override
  String get getMessageForView {
    return message;
  }

  /// Show an exception to the developer when that same exception occurs
  @override
  String get exceptionInStringForDebugPrintException {
    return "EnumGuiltyForLocalException: ${enumGuiltyForLocalException.name} | "
        "Message: $message";
  }
}
