
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';

abstract class BaseSingleWidget
{
  Widget buildSingleWidgetUsingAList(
      BuildContext context,
      List<DomainModel> list);


  Widget buildSingleWidgetUsingTheModel(
      BuildContext context,
      DomainModel model);
}