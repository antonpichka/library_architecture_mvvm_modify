import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseWidgetUsingModelDomain<T extends BaseModelDomain>
{
  Widget buildWidgetUsingModelDomain(
      BuildContext context,
      T model);
}