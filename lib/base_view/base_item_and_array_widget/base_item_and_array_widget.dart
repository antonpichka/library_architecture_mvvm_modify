import 'package:library_architecture_mvvm_modify/base_model/base_domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget.dart';

//ignore: must_be_immutable
abstract class BaseItemAndArrayWidget<
      T extends BaseDomainModel,
      Y extends List<BaseDomainModel>>
          extends BaseItemWidget<T>  
{
  Y _listModel;

  Y get getListModel {
    return _listModel;
  }

  set setListModel(Y listModel) {
    _listModel = listModel;
  }
  
}