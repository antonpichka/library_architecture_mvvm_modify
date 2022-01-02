

import 'package:library_architecture_mvvm_modify/base_model/base_domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget.dart';

//ignore: must_be_immutable
abstract class BaseItemTwoModelWidget<
      T extends BaseDomainModel,
      Y extends BaseDomainModel>
    extends BaseItemWidget<T>  {

      Y _twoModel;

      Y get getTwoModel {
            return _twoModel;
      }

      set setTwoModel(Y twoModel) {
            _twoModel = twoModel;
      }

}