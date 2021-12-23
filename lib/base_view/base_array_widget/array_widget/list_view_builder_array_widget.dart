import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_two_model_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget.dart';

class ListViewBuilderArrayWidget extends BaseArrayWidget
{
  final BaseItemWidget _baseItemWidget;
  ListViewBuilderArrayWidget(this._baseItemWidget);

  @override
  Widget buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(BuildContext context,
      List<DomainModel> list) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          var item = list[index];
          _baseItemWidget.setModel = item;
          return _baseItemWidget;
        });
  }

  @override
  Widget buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(BuildContext context,
      List<DomainModel> list,
      DomainModel model)
  {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          var item = list[index];
          BaseItemTwoModelWidget itemTwoModelWidget = _baseItemWidget;
          itemTwoModelWidget.setModel = item;
          itemTwoModelWidget.setTwoModel = model;
          return itemTwoModelWidget;
        });
  }

  @override
  Widget buildArrayWidgetAndBelongsBaseItemWidget(BuildContext context,
      DomainModel model)
  {
    _baseItemWidget.setModel = model;
    return _baseItemWidget;
  }

}