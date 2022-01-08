import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget.dart';

//ignore: must_be_immutable
abstract class BaseItemAndArrayWidget<
      T extends BaseModelDomain,
      Y extends List<BaseModelDomain>>
          extends BaseItemWidget<T>  
{
  Y _listModelDomain;

  Y get getListModelDomain {
    return _listModelDomain;
  }

  set setListModelDomain(Y listModel) {
    _listModelDomain = listModel;
  }
  
}