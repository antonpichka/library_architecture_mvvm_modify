
import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_and_array_widget/base_item_and_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget.dart';

class DropdownButtonArrayWidget extends BaseArrayWidget {
  final BaseItemWidget _baseItemWidget;

  DropdownButtonArrayWidget(this._baseItemWidget);

  @override
  Widget buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<BaseModelDomain> list,
      BaseModelDomain model)
  {
    BaseItemAndArrayWidget baseItemArrayModelWidget = _baseItemWidget;
    baseItemArrayModelWidget.setModelDomain = model;
    baseItemArrayModelWidget.setListModelDomain = list;
    return baseItemArrayModelWidget;
  }

  @override
  Widget buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<BaseModelDomain> list)
  {
    BaseItemAndArrayWidget baseItemArrayModelWidget = _baseItemWidget;
    baseItemArrayModelWidget.setListModelDomain = list;
    return baseItemArrayModelWidget;
  }

  @override
  Widget buildArrayWidgetAndBelongsBaseItemWidget(
      BuildContext context,
      BaseModelDomain model)
  {
    _baseItemWidget.setModelDomain = model;
    return _baseItemWidget;
  }

}