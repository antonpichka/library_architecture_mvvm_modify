import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';

abstract class BaseArrayWidget
{

  Widget buildBaseStreamArrayAndBelongsBaseItemOrBelongsBaseItemAndArrayModelWidget(BuildContext context,
      List<DomainModel> list);

  Widget buildBaseStreamArrayAndBelongsBaseItemWidget(BuildContext context,
      DomainModel model);

  Widget buildBaseStreamArrayAndBelongsBaseItemTwoModelOrBelongsBaseItemAndArrayModelWidget(BuildContext context,
      List<DomainModel> list,
      DomainModel model);
}