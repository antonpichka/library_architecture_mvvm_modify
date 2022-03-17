// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_widget_using/base_widget_using_other_model.dart';

enum SelectedSingleStreamBuilderWidgetForOtherModel {
  WIDGET_USE_STREAM_OTHER_MODEL,
  WIDGET_USE_FUTURE_OTHER_MODEL,
}

// ignore: must_be_immutable
class SingleStreamBuilderWidgetForOtherModel<T> extends StatelessWidget
{
  final BaseWidgetUsingOtherModel<T> _baseWidgetUsingOtherModel;
  SelectedSingleStreamBuilderWidgetForOtherModel _enumSelectedStreamBuilderWidget;

  Stream<T> _streamOtherModel;
  Future<T> _futureOtherModel;

  SingleStreamBuilderWidgetForOtherModel.widgetUseStreamOtherModel(
      this._baseWidgetUsingOtherModel,
      this._streamOtherModel,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidgetForOtherModel.WIDGET_USE_STREAM_OTHER_MODEL;
  }

  SingleStreamBuilderWidgetForOtherModel.widgetUseFutureOtherModel(
      this._baseWidgetUsingOtherModel,
      this._futureOtherModel,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidgetForOtherModel.WIDGET_USE_FUTURE_OTHER_MODEL;
  }
  
  @override
  Widget build(BuildContext context) {
    switch(_enumSelectedStreamBuilderWidget) {
      case SelectedSingleStreamBuilderWidgetForOtherModel.WIDGET_USE_STREAM_OTHER_MODEL:
        return _buildStreamBuilderWidgetUsingOtherModel();
      case SelectedSingleStreamBuilderWidgetForOtherModel.WIDGET_USE_FUTURE_OTHER_MODEL:
        return _buildFutureBuilderWidgetUsingOtherModel();
      default:
        return _buildStreamBuilderWidgetUsingOtherModel();
    }
  }

  Widget _buildStreamBuilderWidgetUsingOtherModel() {
    return StreamBuilder<T>(
        stream: _streamOtherModel,
        builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
        {
          return _baseWidgetUsingOtherModel.buildWidgetUsingOtherModel(context, asyncSnapshot.data);
        });
  }

  Widget _buildFutureBuilderWidgetUsingOtherModel() {
    return FutureBuilder<T>(
        future: _futureOtherModel,
        builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
        {
          return _baseWidgetUsingOtherModel.buildWidgetUsingOtherModel(context, asyncSnapshot.data);
        });
  }
}