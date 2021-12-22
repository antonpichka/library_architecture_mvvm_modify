
import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_and_item_widget/base_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_and_item_widget/base_item_and_array_model_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_and_item_widget/base_item_widget.dart';

class DropdownButtonArrayWidget extends BaseArrayWidget {
  final BaseItemWidget _baseItemWidget;

  DropdownButtonArrayWidget(this._baseItemWidget);

  @override
  Widget buildBaseStreamArrayAndBelongsBaseItemTwoModelOrBelongsBaseItemAndArrayModelWidget(
      BuildContext context,
      List<DomainModel> list,
      DomainModel model)
  {
    BaseItemAndArrayModelWidget baseItemArrayModelWidget = _baseItemWidget;
    baseItemArrayModelWidget.setModel = model;
    baseItemArrayModelWidget.setListModel = list;
    return baseItemArrayModelWidget;
  }

  @override
  Widget buildBaseStreamArrayAndBelongsBaseItemOrBelongsBaseItemAndArrayModelWidget(
      BuildContext context,
      List<DomainModel> list)
  {
    BaseItemAndArrayModelWidget baseItemArrayModelWidget = _baseItemWidget;
    baseItemArrayModelWidget.setListModel = list;
    return baseItemArrayModelWidget;
  }

  @override
  Widget buildBaseStreamArrayAndBelongsBaseItemWidget(
      BuildContext context,
      DomainModel model)
  {
    _baseItemWidget.setModel = model;
    return _baseItemWidget;
  }

}