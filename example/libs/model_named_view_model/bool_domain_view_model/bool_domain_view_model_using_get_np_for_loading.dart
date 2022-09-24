import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_domain_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';

class BoolDomainViewModelUsingGetNPForLoading
    extends BoolDomainViewModel
{
  BoolDomainViewModelUsingGetNPForLoading() : super(
      [EnumBaseModelDomainVM.getModelFromNamedDatabaseNP],
      []);

  Stream<BoolDomain> get getStreamBoolUsingGetNPForLoading {
    return getStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseNP);
  }

  BoolDomain get getBoolUsingGetNPForLoading {
    return getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseNP);
  }

  void notifyStreamBoolUsingGetNPForLoading() {
    notifyStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseNP);
  }
}