import 'package:library_architecture_mvvm_modify/base_exception/base_exception.dart';
import 'package:library_architecture_mvvm_modify/base_iterator/base_iterator.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/enum_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_type_parameter_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_iterator_object_operation_view_model.dart';
import 'package:library_architecture_mvvm_modify/response.dart';

class ProtectedBaseViewModel {
  final Map<EnumBaseListModelDomainObjectOperationViewModel,BaseListModelDomain> _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain;
  final Map<EnumBaseTypeParameterObjectOperationViewModel, BaseTypeParameter> _mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter;
  final Map<EnumIteratorObjectOperationViewModel,EnumTypeParameter> _mapEnumIteratorObjectOperationViewModelAndEnumTypeParameter;

  ProtectedBaseViewModel(
      this._mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain,
      this._mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter,
      this._mapEnumIteratorObjectOperationViewModelAndEnumTypeParameter
      );

  Response<bool, BaseException> selectIteratorViaEnumTypeParameter(
      Map<Enum,BaseIterator> mapEnumAndBaseIterator,
      EnumBaseListModelDomainObjectOperationViewModel enumBaseListModelDomainObjectOperationViewModel,
      EnumIteratorObjectOperationViewModel enumIteratorObjectOperationViewModel,)
  {
    return _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[enumBaseListModelDomainObjectOperationViewModel]
        .selectIteratorViaEnumTypeParameter(
           _mapEnumIteratorObjectOperationViewModelAndEnumTypeParameter[enumIteratorObjectOperationViewModel],
            mapEnumAndBaseIterator,
    );
  }

  BaseTypeParameter getBaseTypeParameterForGetModelLNDatabaseAndGetListLNDatabase(
      EnumBaseTypeParameterObjectOperationViewModel operation)
  {
    return _mapEnumBaseTypeParameterObjectOperationViewModelAndBaseTypeParameter[operation];
  }

  BaseListModelDomain getBaseListModelDomain(EnumBaseListModelDomainObjectOperationViewModel operation) {
    return _mapEnumBaseListModelDomainObjectOperationViewModelAndBaseListModelDomain[operation];
  }
}