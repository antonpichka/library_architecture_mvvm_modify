import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';

abstract class BaseArrayWidget
{
  Widget buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<DomainModel> list);

  Widget buildArrayWidgetAndBelongsBaseItemWidget(
      BuildContext context,
      DomainModel model);

  Widget buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
      BuildContext context,
      List<DomainModel> list,
      DomainModel model);
}