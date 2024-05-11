import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';

/// Designed for 'NamedVM'
/// Where to use ? - use in classes 'NamedVM','NamedStreamWState','NamedState'
abstract base class BaseDataForNamed<T extends Enum> {
  /// So that the user can wait
  /// Where to use ? - used to method 'getEnumDataForNamed' and in class 'NamedVM'
  bool isLoading;

  /// If there was an error somewhere, you can show it using this class, the main thing is not to forget to assign
  /// Where to use ? - used to method 'getEnumDataForNamed' and in class 'NamedVM'
  ExceptionController exceptionController;

  /// Initialize the parameters 'isLoading','exceptionController'
  /// Where to use ? - preferably used in the 'NamedVM' class
  BaseDataForNamed(this.isLoading)
      : exceptionController = ExceptionController.success();

  /// Using this method, we process the logic and show the user certain widgets in the 'NamedVM'
  /// Where to use ? - used to the class 'NamedV,'
  T get getEnumDataForNamed;
}
