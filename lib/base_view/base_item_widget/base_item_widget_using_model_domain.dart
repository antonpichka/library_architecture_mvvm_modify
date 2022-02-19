import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';

abstract class BaseItemWidgetUsingModelDomain<
      T extends BaseModelDomain>
    extends StatelessWidget
{
  final T modelDomain;

  const BaseItemWidgetUsingModelDomain(this.modelDomain);
}