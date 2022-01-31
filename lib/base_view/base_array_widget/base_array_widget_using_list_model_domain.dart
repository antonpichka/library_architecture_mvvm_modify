import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget_using_model_domain.dart';

abstract class BaseArrayWidgetUsingListModelDomain<T extends BaseModelDomain> {
  @protected
  final BaseItemWidgetUsingModelDomain baseItemWidgetUsingModelDomain;

  BaseArrayWidgetUsingListModelDomain(this.baseItemWidgetUsingModelDomain);
  
  Widget buildArrayWidgetUsingListModelDomain(
      BuildContext context,
      List<T> list
      );
}