import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseArrayWidgetUsingListModelDomain<T extends BaseModelDomain> {
  
  Widget buildArrayWidgetUsingListModelDomain(
      BuildContext context,
      List<T> list
      );
}