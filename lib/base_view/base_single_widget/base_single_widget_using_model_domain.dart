import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseSingleWidgetUsingModelDomain<T extends BaseModelDomain>
{
  Widget buildSingleWidgetUsingModelDomain(
      BuildContext context,
      T model);
}