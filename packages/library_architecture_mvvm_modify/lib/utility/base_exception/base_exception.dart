import 'package:library_architecture_mvvm_modify/utility/utility.dart';

abstract class BaseException
    implements Exception
{
  BaseException(
      Object thisClass,
      Type exceptionClass)
  {
    debugPrintException("===start_to_trace_exception===\n");
    debugPrintException("NameException(Class): $exceptionClass\nWhereHappenedException(Class): ${thisClass.runtimeType}\nExceptionInString: $exceptionInStringForDebugPrintException\n");
    debugPrintException("===end_to_trace_exception===\n");
  }

  String get getMessageForView;
  String get exceptionInStringForDebugPrintException;
}