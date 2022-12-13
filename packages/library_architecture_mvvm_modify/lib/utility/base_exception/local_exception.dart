import 'package:library_architecture_mvvm_modify/utility/base_exception/base_exception.dart';

// Who is in fault?
enum EnumGuiltyForLocalException {
  developer,
  device,
  user
}

class LocalException
    extends BaseException
{
  final EnumGuiltyForLocalException enumGuiltyForLocalException;
  final String message;

  LocalException(
      Object thisClass,
      this.enumGuiltyForLocalException,
      this.message)
      : super(thisClass,LocalException);

  LocalException.whereTheUserIsGuilty(
      Object thisClass,
      this.message)
      : enumGuiltyForLocalException = EnumGuiltyForLocalException.user,
        super(thisClass,LocalException);

  @override
  String get getMessageForView {
    return message;
  }

  @override
  String get exceptionInStringForDebugPrintException {
    return "EnumGuiltyForLocalException: ${enumGuiltyForLocalException.name} | "
        "Message: $message";
  }
}