import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseWidgetUsingListModelDomainAndModelDomain<T extends BaseModelDomain, Y extends BaseModelDomain> {

  Widget buildWidgetUsingListModelDomainAndModelDomain(
      BuildContext context,
      List<T> list,
      Y model
      );

}