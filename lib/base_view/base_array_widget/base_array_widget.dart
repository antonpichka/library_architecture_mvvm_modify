import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseArrayWidget<T extends BaseModelDomain>
{
  Widget buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<T> list);

  Widget buildArrayWidgetAndBelongsBaseItemWidget(
      BuildContext context,
      T model);

  Widget buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<T> list,
      T model);
}