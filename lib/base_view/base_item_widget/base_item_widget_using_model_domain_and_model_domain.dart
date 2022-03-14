import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_item_widget/base_item_widget_using_model_domain.dart';

abstract class BaseItemWidgetUsingModelDomainAndModelDomain<
      T extends BaseModelDomain,
      Y extends BaseModelDomain>
    extends BaseItemWidgetUsingModelDomain<T>
{
  final Y twoModelDomain;

  const BaseItemWidgetUsingModelDomainAndModelDomain(T modelDomain,this.twoModelDomain,{Key key}) : super(modelDomain,key: key);
}