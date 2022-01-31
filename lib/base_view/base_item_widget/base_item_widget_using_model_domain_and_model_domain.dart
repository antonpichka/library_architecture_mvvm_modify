import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget_using_model_domain.dart';

//ignore: must_be_immutable
abstract class BaseItemWidgetUsingModelDomainAndModelDomain<
      T extends BaseModelDomain,
      Y extends BaseModelDomain>
    extends BaseItemWidgetUsingModelDomain<T>  {

      Y _twoModelDomain;

      Y get getTwoModelDomain {
            return _twoModelDomain;
      }

      set setTwoModelDomain(Y twoModel) {
            _twoModelDomain = twoModel;
      }

}