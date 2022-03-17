
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseWidgetUsingListModelDomain<T extends BaseModelDomain>
{
  Widget buildWidgetUsingListModelDomain(
      BuildContext context,
      List<T> list);
}