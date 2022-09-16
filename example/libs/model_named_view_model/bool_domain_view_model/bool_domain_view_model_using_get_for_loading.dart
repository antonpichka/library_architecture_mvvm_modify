import 'package:library_architecture_mvvm_modify/base_model/bool_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/bool_domain_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enums_for_view_model/enum_base_model_domain_vm.dart';

class BoolDomainViewModelUsingGetForLoading extends BoolDomainViewModel {
  BoolDomainViewModelUsingGetForLoading() : super(
      [EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter],
      [],
      null,
      null
  );

  Stream<BoolDomain> get getStreamBoolUsingGetForLoading {
    return getStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
  }

  BoolDomain get getBoolUsingGetForLoading {
    return getModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
  }

  void notifyStreamBoolUsingGetForLoading() {
    notifyStreamModel(EnumBaseModelDomainVM.getModelFromNamedDatabaseThereIsParameter);
  }
}