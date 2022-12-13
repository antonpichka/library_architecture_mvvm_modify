import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_named_view_list_view_model/base_named_view_list_view_model.dart';

abstract class BaseNamedView<T extends StatefulWidget,Y extends BaseNamedViewListViewModel>
    extends State<T>
    with WidgetsBindingObserver
{
  @protected
  final Y lo;

  BaseNamedView(this.lo);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  
  @override
  void dispose() {
    lo.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}