
import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_and_array_widget/base_item_and_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget.dart';

class DropdownButtonArrayWidget extends BaseArrayWidget {
  final BaseItemWidget _baseItemWidget;

  DropdownButtonArrayWidget(this._baseItemWidget);

  @override
  Widget buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<DomainModel> list,
      DomainModel model)
  {
    BaseItemAndArrayWidget baseItemArrayModelWidget = _baseItemWidget;
    baseItemArrayModelWidget.setModel = model;
    baseItemArrayModelWidget.setListModel = list;
    return baseItemArrayModelWidget;
  }

  @override
  Widget buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<DomainModel> list)
  {
    BaseItemAndArrayWidget baseItemArrayModelWidget = _baseItemWidget;
    baseItemArrayModelWidget.setListModel = list;
    return baseItemArrayModelWidget;
  }

  @override
  Widget buildArrayWidgetAndBelongsBaseItemWidget(
      BuildContext context,
      DomainModel model)
  {
    _baseItemWidget.setModel = model;
    return _baseItemWidget;
  }

}