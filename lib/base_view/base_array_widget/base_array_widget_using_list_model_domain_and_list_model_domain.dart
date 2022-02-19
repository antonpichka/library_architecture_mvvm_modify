import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseArrayWidgetUsingListModelDomainAndListModelDomain<T extends BaseModelDomain,Y extends BaseModelDomain> {

  Widget buildArrayWidgetUsingListModelDomainAndListModelDomain(
      BuildContext context,
      List<T> listModelT,
      List<Y> listModelY
      );
}