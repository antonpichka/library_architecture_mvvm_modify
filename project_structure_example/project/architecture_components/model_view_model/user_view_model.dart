import 'package:library_architecture_mvvm_modify/base_data_source/interface_data_source/data_source.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';

import '../model/user/user_domain.dart';

class UserViewModel extends BaseViewModel {

  UserViewModel(
      DataSource dataSource,
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM,
      ItemCreator<BaseListModelDomain> itemCreator)
      : super(dataSource,
              listEnumBaseModelDomainVM,
              listEnumBaseListModelDomainVM, 
              () => UserDomain.getDefaultUserDomain,
              itemCreator
        );

  /// Start Custom Methods Use Only To ListOfViewModelsUsingRealizedMethodsForMainView  **/



  /// End Custom Methods Use Only To ListOfViewModelsUsingRealizedMethodsForMainView  **/
}