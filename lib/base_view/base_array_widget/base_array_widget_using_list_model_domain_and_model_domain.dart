import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseArrayWidgetUsingListModelDomainAndModelDomain<T extends BaseModelDomain, Y extends BaseModelDomain> {

  Widget buildArrayWidgetUsingListModelDomainAndModelDomain(
      BuildContext context,
      List<T> list,
      Y model
      );

}