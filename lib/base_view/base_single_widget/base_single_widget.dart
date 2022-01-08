
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseSingleWidget<T extends BaseModelDomain>
{
  Widget buildSingleWidgetUsingAList(
      BuildContext context,
      List<T> list);


  Widget buildSingleWidgetUsingTheModelDomain(
      BuildContext context,
      T model);
}