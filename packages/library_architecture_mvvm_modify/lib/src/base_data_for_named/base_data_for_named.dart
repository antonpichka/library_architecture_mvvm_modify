import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

/// Designed for 'NamedViewModel','NamedView'
/// Where to use ? - use in classes 'NamedViewModel','NamedView','NamedStreamWState'
abstract base class BaseDataForNamed<T extends Enum> {
  /// So that the user can wait
  /// Where to use ? - used to method 'getEnumDataForNamed' and in class 'NamedViewModel'
  bool isLoading;

  /// If there was an error somewhere, you can show it using this class, the main thing is not to forget to assign
  /// Where to use ? - used to method 'getEnumDataForNamed' and in class 'NamedViewModel'
  ExceptionController exceptionController;

  /// Initialize the parameters 'isLoading','exceptionController'
  /// Where to use ? - preferably used in the 'NamedViewModel' class
  BaseDataForNamed(this.isLoading)
      : exceptionController = ExceptionController.success();

  /// Using this method, we process the logic and show the user certain widgets in the 'NamedView'
  /// Where to use ? - used to the class 'NamedView'
  T get getEnumDataForNamed;
}
