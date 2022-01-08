import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseArrayWidget
{
  Widget buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<BaseModelDomain> list);

  Widget buildArrayWidgetAndBelongsBaseItemWidget(
      BuildContext context,
      BaseModelDomain model);

  Widget buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<BaseModelDomain> list,
      BaseModelDomain model);
}