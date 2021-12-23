

import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget.dart';

//ignore: must_be_immutable
abstract class BaseItemTwoModelWidget<
      T extends DomainModel,
      Y extends DomainModel>
    extends BaseItemWidget<T>  {

      Y _twoModel;

      Y get getTwoModel {
            return _twoModel;
      }

      set setTwoModel(Y twoModel) {
            _twoModel = twoModel;
      }

}