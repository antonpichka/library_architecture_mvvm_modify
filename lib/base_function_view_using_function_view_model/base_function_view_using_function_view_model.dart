import 'package:library_architecture_mvvm_modify/base_exception/domain_exception.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';

/*  Start Variant: No There Is Parameter No Notify Stream */

/*
   1) void FUNCTION_VIEW_MODEL
 */

/*  End Variant: No There Is Parameter No Notify Stream */

/*  Start Variant: No There Is Parameter Yes Notify Stream */

/*
   1) void FUNCTION_VIEW_MODEL
   2) void FUNCTION_VIEW_MODEL and NotifyStream.. ModelDomain/ListModelDomain
   3) NotifyStream.. ModelDomain/ListModelDomain
 */

/*  End Variant: No There Is Parameter Yes Notify Stream */

/* Start Variant: Yes There Is Parameter Yes Notify Stream */

/*
   1) void FUNCTION_VIEW_MODEL
   2) void FUNCTION_VIEW_MODEL and NotifyStream.. ModelDomain/ListModelDomain
   3) NotifyStream.. ModelDomain/ListModelDomain
   4) void set.. BaseParameter/ModelDomain and FUNCTION_VIEW_MODEL
   5) void set.. BaseParameter/ModelDomain and FUNCTION_VIEW_MODEL and NotifyStream.. ModelDomain/ListModelDomain
   6) void set.. BaseParameter/ModelDomain
 */

/* End Variant: Yes There Is Parameter Yes Notify Stream  */

abstract class BaseFunctionViewUsingFunctionViewModel<T> {
  Future<void> mainMethod(
      T mainMethod,
      {Function functionForResultSuccess,
      Function(DomainException) functionForResultDomainException,
      Function(LocalException) functionForResultLocalException}
      );

}