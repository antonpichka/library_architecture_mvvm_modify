
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_domain_model.dart';

abstract class BaseSingleWidget<T extends BaseDomainModel>
{
  Widget buildSingleWidgetUsingAList(
      BuildContext context,
      List<T> list);


  Widget buildSingleWidgetUsingTheModel(
      BuildContext context,
      T model);
}