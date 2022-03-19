import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';

import '../model/user/user_domain.dart';

class UserViewModel extends BaseViewModel {

  UserViewModel(
      /* Repository this._repository*/
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM,
      ItemCreator<BaseListModelDomain> itemCreator)
      : super(listEnumBaseModelDomainVM,
              listEnumBaseListModelDomainVM, 
              () => UserDomain.getDefaultUserDomain,
              itemCreator
        );

  /// Start Abstract Methods **/


  /// End Abstract Methods **/

  /// Start ListModel Methods (additions to Insert/Update/Delete Model FVM) do not have their own objects  **/



  /// End ListModel Methods (additions to Insert/Update/Delete Model FVM) do not have their own objects  **/

  /// Start Custom Methods  **/



  /// End Custom Methods  **/
}