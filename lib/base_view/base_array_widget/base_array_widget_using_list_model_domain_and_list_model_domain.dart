import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget_using_model_domain_and_model_domain.dart';

abstract class BaseArrayWidgetUsingListModelDomainAndListModelDomain<T extends BaseModelDomain,Y extends BaseModelDomain> {
  @protected
  BaseItemWidgetUsingModelDomainAndModelDomain baseItemWidgetUsingModelDomainAndModelDomain;

  BaseArrayWidgetUsingListModelDomainAndListModelDomain(this.baseItemWidgetUsingModelDomainAndModelDomain);

  Widget buildArrayWidgetUsingListModelDomainAndListModelDomain(
      BuildContext context,
      List<T> listModelT,
      List<Y> listModelY
      );
}