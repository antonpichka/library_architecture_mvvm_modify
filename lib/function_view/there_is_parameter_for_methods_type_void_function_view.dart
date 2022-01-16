import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/network_exception.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';

abstract class ThereIsParameterForMethodsTypeVoidFunctionView<T,Y> {
  void mainMethod(
      T mainMethod,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException);

  void mainMethodAndNotifyStream(
      T mainMethod,
      BaseViewModel baseViewModel,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException);

  void setObjectAndMainMethod(
      T mainMethod,
      BaseViewModel baseViewModel,
      Y object,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException);

  void setObjectAndMainMethodAndNotifyStream(
      T mainMethod,
      BaseViewModel baseViewModel,
      Y object,
      Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException,
      Function(NetworkException) functionForResultNetworkException);

  void setObject(
      BaseViewModel baseViewModel,
      Y object);

  void notifyStream(BaseViewModel baseViewModel);
}