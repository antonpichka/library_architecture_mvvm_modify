import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_two_model_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget.dart';

class ListViewBuilderArrayWidget extends BaseArrayWidget
{
  final BaseItemWidget _baseItemWidget;
  ListViewBuilderArrayWidget(this._baseItemWidget);

  @override
  Widget buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(BuildContext context,
      List<BaseModelDomain> list) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          var item = list[index];
          _baseItemWidget.setModelDomain = item;
          return _baseItemWidget;
        });
  }

  @override
  Widget buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(BuildContext context,
      List<BaseModelDomain> list,
      BaseModelDomain model)
  {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          var item = list[index];
          BaseItemTwoModelWidget itemTwoModelWidget = _baseItemWidget;
          itemTwoModelWidget.setModelDomain = item;
          itemTwoModelWidget.setTwoModelDomain = model;
          return itemTwoModelWidget;
        });
  }

  @override
  Widget buildArrayWidgetAndBelongsBaseItemWidget(BuildContext context,
      BaseModelDomain model)
  {
    _baseItemWidget.setModelDomain = model;
    return _baseItemWidget;
  }

}