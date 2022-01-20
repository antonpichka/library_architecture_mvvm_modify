import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';

abstract class BaseViewModelFactory {
  BaseViewModel createViewModel(
      List<EnumBaseModelDomainVM> _listEnumBaseModelDomain,
      List<EnumBaseListModelDomainVM> _listEnumBaseListModelDomain
      );
}