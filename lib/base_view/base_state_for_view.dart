import 'package:flutter/widgets.dart';
import 'package:library_architecture_mvvm_modify/base_view_model/base_view_model_factory.dart';

abstract class BaseStateForView<T extends StatefulWidget,Y extends Enum>
    extends State<T> with WidgetsBindingObserver 
{
  final BaseViewModelFactory<Y> _baseViewModelFactory;

  BaseStateForView(this._baseViewModelFactory);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }
  
  @override
  void dispose() {
    _baseViewModelFactory.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @protected
  BaseViewModelFactory<Y> get getViewModelFactory {
    return _baseViewModelFactory;
  }
  
}