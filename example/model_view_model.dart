import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_list_model_domain_vm.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/enum_base_model_domain_vm.dart';

import 'model_domain.dart';

class ModelViewModel extends BaseViewModel {

  ModelViewModel(
      /* Repository this._repository*/
      List<EnumBaseModelDomainVM> listEnumBaseModelDomainVM,
      List<EnumBaseListModelDomainVM> listEnumBaseListModelDomainVM,
      ItemCreator<BaseListModelDomain> itemCreator)
      : super(listEnumBaseModelDomainVM,
              listEnumBaseListModelDomainVM, 
              () => ModelDomain(uniqueId: "",name: ""),
              itemCreator
        );


  /// Start Abstract Function Methods **/



  /// End Abstract Function Methods **/

  /// Start Methods ListModel (additions to Insert/Update/Delete Model FVM) do not have their own objects  **/



  /// End Function Methods ListModel (additions to Insert/Update/Delete Model FVM) do not have their own objects  **/

  /// Start Other Methods  **/



  /// End Other Methods  **/
}