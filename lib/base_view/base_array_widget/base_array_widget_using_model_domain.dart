import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget_using_model_domain.dart';

abstract class BaseArrayWidgetUsingModelDomain<T extends BaseModelDomain> {
  @protected
  BaseItemWidgetUsingModelDomain baseItemWidgetUsingModelDomain;

  BaseArrayWidgetUsingModelDomain(this.baseItemWidgetUsingModelDomain);

  Widget buildArrayWidgetUsingModelDomain(
      BuildContext context,
      T model
      );
}