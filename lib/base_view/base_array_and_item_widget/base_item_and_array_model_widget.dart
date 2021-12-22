import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_and_item_widget/base_item_widget.dart';

//ignore: must_be_immutable
abstract class BaseItemAndArrayModelWidget<
      T extends DomainModel,
      Y extends List<DomainModel>>
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