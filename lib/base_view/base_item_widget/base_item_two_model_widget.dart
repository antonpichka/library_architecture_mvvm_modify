

import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget.dart';

//ignore: must_be_immutable
abstract class BaseItemTwoModelWidget<
      T extends BaseModelDomain,
      Y extends BaseModelDomain>
    extends BaseItemWidget<T>  {

      Y _twoModelDomain;

      Y get getTwoModelDomain {
            return _twoModelDomain;
      }

      set setTwoModelDomain(Y twoModel) {
            _twoModelDomain = twoModel;
      }

}