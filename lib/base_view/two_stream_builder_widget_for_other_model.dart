// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_widget_using/base_widget_using_other_model_and_other_model.dart';

enum SelectedTwoStreamBuilderWidgetForOtherModel {
  WIDGET_USE_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL,
  WIDGET_USE_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL,
  WIDGET_USE_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL,
  WIDGET_USE_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL,
}

//ignore: must_be_immutable
class TwoStreamBuilderWidgetForOtherModel<T,Y>
    extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  final BaseWidgetUsingOtherModelAndOtherModel<T,Y> _baseWidgetUsingOtherModelAndOtherModel;
  SelectedTwoStreamBuilderWidgetForOtherModel _enumSelectedStreamWidget;

  Stream<T> _streamOtherModelT;
  Future<T> _futureOtherModelT;

  Stream<Y> _streamOtherModelY;
  Future<Y> _futureOtherModelY;
  
  TwoStreamBuilderWidgetForOtherModel.widgetUseStreamOtherModelAndStreamOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModel,
      this._streamOtherModelT,
      this._streamOtherModelY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForOtherModel
        .WIDGET_USE_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL;
  }

  TwoStreamBuilderWidgetForOtherModel.widgetUseFutureOtherModelAndFutureOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModel,
      this._futureOtherModelT,
      this._futureOtherModelY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForOtherModel
        .WIDGET_USE_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL;
  }

  TwoStreamBuilderWidgetForOtherModel.widgetUseFutureOtherModelAndStreamOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModel,
      this._futureOtherModelT,
      this._streamOtherModelY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForOtherModel
        .WIDGET_USE_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL;
  }

  TwoStreamBuilderWidgetForOtherModel.widgetUseStreamOtherModelAndFutureOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModel,
      this._streamOtherModelT,
      this._futureOtherModelY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForOtherModel
        .WIDGET_USE_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL;
  }

  @override
  Widget build(BuildContext context) {
    switch(_enumSelectedStreamWidget) {
      case SelectedTwoStreamBuilderWidgetForOtherModel.WIDGET_USE_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL:
        return _buildWidgetUseStreamOtherModelAndStreamOtherModel();
      case SelectedTwoStreamBuilderWidgetForOtherModel.WIDGET_USE_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL:
        return _buildWidgetUseFutureOtherModelAndFutureOtherModel();
      case SelectedTwoStreamBuilderWidgetForOtherModel.WIDGET_USE_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL:
        return _buildWidgetUseFutureOtherModelAndStreamOtherModel();
      case SelectedTwoStreamBuilderWidgetForOtherModel.WIDGET_USE_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL:
        return _buildWidgetUseStreamOtherModelAndFutureOtherModel();
      default:
        return _buildWidgetUseStreamOtherModelAndStreamOtherModel();
    }
  }

  Widget _buildWidgetUseStreamOtherModelAndStreamOtherModel() {
    return StreamBuilder<T>(
        stream: _streamOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return _baseWidgetUsingOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModel(
                    context,
                    modelAsyncSnapshotT.data,
                    modelAsyncSnapshotY.data
                );
              });
        });
  }

  Widget _buildWidgetUseFutureOtherModelAndFutureOtherModel() {
    return FutureBuilder<T>(
        future: _futureOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return _baseWidgetUsingOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModel(
                    context,
                    modelAsyncSnapshotT.data,
                    modelAsyncSnapshotY.data
                );
              });
        });
  }

  Widget _buildWidgetUseFutureOtherModelAndStreamOtherModel() {
    return FutureBuilder<T>(
        future: _futureOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return _baseWidgetUsingOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModel(
                    context,
                    modelAsyncSnapshotT.data,
                    modelAsyncSnapshotY.data
                );
              });
        });
  }

  Widget _buildWidgetUseStreamOtherModelAndFutureOtherModel() {
    return StreamBuilder<T>(
        stream: _streamOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return _baseWidgetUsingOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModel(
                    context,
                    modelAsyncSnapshotT.data,
                    modelAsyncSnapshotY.data
                );
              });
        });
  }
  
}