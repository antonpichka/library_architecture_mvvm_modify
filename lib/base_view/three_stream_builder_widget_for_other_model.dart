// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_widget_using/base_widget_using_other_model_and_other_model_and_other_model.dart';

enum SelectedThreeStreamBuilderWidgetForOtherModel {
  WIDGET_USE_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL,
  WIDGET_USE_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL,
  WIDGET_USE_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL,

  WIDGET_USE_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL,
  WIDGET_USE_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL,
  WIDGET_USE_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL,

  WIDGET_USE_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL,
  WIDGET_USE_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL,
}

//ignore: must_be_immutable
class ThreeStreamBuilderWidgetForOtherModel<T,Y,Z>
    extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  final BaseWidgetUsingOtherModelAndOtherModelAndOtherModel<T,Y,Z> _baseWidgetUsingOtherModelAndOtherModelAndOtherModel;
  SelectedThreeStreamBuilderWidgetForOtherModel _enumSelectedStreamWidget;

  Stream<T> _streamOtherModelT;
  Future<T> _futureOtherModelT;

  Stream<Y> _streamOtherModelY;
  Future<Y> _futureOtherModelY;

  Stream<Z> _streamOtherModelZ;
  Future<Z> _futureOtherModelZ;

  ThreeStreamBuilderWidgetForOtherModel.widgetUseFutureOtherModelAndFutureOtherModelAndFutureOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModelAndOtherModel,
      this._futureOtherModelT,
      this._futureOtherModelY,
      this._futureOtherModelZ,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedThreeStreamBuilderWidgetForOtherModel
        .WIDGET_USE_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL;
  }

  ThreeStreamBuilderWidgetForOtherModel.widgetUseFutureOtherModelAndFutureOtherModelAndStreamOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModelAndOtherModel,
      this._futureOtherModelT,
      this._futureOtherModelY,
      this._streamOtherModelZ,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedThreeStreamBuilderWidgetForOtherModel
        .WIDGET_USE_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL;
  }

  ThreeStreamBuilderWidgetForOtherModel.widgetUseFutureOtherModelAndStreamOtherModelAndStreamOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModelAndOtherModel,
      this._futureOtherModelT,
      this._streamOtherModelY,
      this._streamOtherModelZ,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedThreeStreamBuilderWidgetForOtherModel
        .WIDGET_USE_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL;
  }

  ThreeStreamBuilderWidgetForOtherModel.widgetUseStreamOtherModelAndStreamOtherModelAndStreamOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModelAndOtherModel,
      this._streamOtherModelT,
      this._streamOtherModelY,
      this._streamOtherModelZ,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedThreeStreamBuilderWidgetForOtherModel
        .WIDGET_USE_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL;
  }

  ThreeStreamBuilderWidgetForOtherModel.widgetUseStreamOtherModelAndStreamOtherModelAndFutureOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModelAndOtherModel,
      this._streamOtherModelT,
      this._streamOtherModelY,
      this._futureOtherModelZ,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedThreeStreamBuilderWidgetForOtherModel
        .WIDGET_USE_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL;
  }

  ThreeStreamBuilderWidgetForOtherModel.widgetUseStreamOtherModelAndFutureOtherModelAndFutureOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModelAndOtherModel,
      this._streamOtherModelT,
      this._futureOtherModelY,
      this._futureOtherModelZ,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedThreeStreamBuilderWidgetForOtherModel
        .WIDGET_USE_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL;
  }

  ThreeStreamBuilderWidgetForOtherModel.widgetUseStreamOtherModelAndFutureOtherModelAndStreamOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModelAndOtherModel,
      this._streamOtherModelT,
      this._futureOtherModelY,
      this._streamOtherModelZ,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedThreeStreamBuilderWidgetForOtherModel
        .WIDGET_USE_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL;
  }

  ThreeStreamBuilderWidgetForOtherModel.widgetUseFutureOtherModelAndStreamOtherModelAndFutureOtherModel(
      this._baseWidgetUsingOtherModelAndOtherModelAndOtherModel,
      this._futureOtherModelT,
      this._streamOtherModelY,
      this._futureOtherModelZ,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedThreeStreamBuilderWidgetForOtherModel
        .WIDGET_USE_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL;
  }

  @override
  Widget build(BuildContext context) {
    switch(_enumSelectedStreamWidget) {
      case SelectedThreeStreamBuilderWidgetForOtherModel.WIDGET_USE_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL:
        return _buildWidgetUseFutureOtherModelAndFutureOtherModelAndFutureOtherModel();
      case SelectedThreeStreamBuilderWidgetForOtherModel.WIDGET_USE_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL:
        return _buildWidgetUseFutureOtherModelAndFutureOtherModelAndStreamOtherModel();
      case SelectedThreeStreamBuilderWidgetForOtherModel.WIDGET_USE_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL:
        return _buildWidgetUseFutureOtherModelAndStreamOtherModelAndStreamOtherModel();
      case SelectedThreeStreamBuilderWidgetForOtherModel.WIDGET_USE_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL:
        return _buildWidgetUseStreamOtherModelAndStreamOtherModelAndStreamOtherModel();
      case SelectedThreeStreamBuilderWidgetForOtherModel.WIDGET_USE_STREAM_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL:
        return _buildWidgetUseStreamOtherModelAndStreamOtherModelAndFutureOtherModel();
      case SelectedThreeStreamBuilderWidgetForOtherModel.WIDGET_USE_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_FUTURE_OTHER_MODEL:
        return _buildWidgetUseStreamOtherModelAndFutureOtherModelAndFutureOtherModel();
      case SelectedThreeStreamBuilderWidgetForOtherModel.WIDGET_USE_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL:
        return _buildWidgetUseStreamOtherModelAndFutureOtherModelAndStreamOtherModel();
      case SelectedThreeStreamBuilderWidgetForOtherModel.WIDGET_USE_FUTURE_OTHER_MODEL_AND_STREAM_OTHER_MODEL_AND_FUTURE_OTHER_MODEL:
        return _buildWidgetUseFutureOtherModelAndStreamOtherModelAndFutureOtherModel();
      default:
        return _buildWidgetUseFutureOtherModelAndFutureOtherModelAndFutureOtherModel();
    }
  }

  Widget _buildWidgetUseFutureOtherModelAndFutureOtherModelAndFutureOtherModel() {
    return FutureBuilder<T>(
        future: _futureOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return FutureBuilder<Z>(
                    future: _futureOtherModelZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                {
                  return _baseWidgetUsingOtherModelAndOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModelAndOtherModel(
                    context,
                    modelAsyncSnapshotT.data,
                    modelAsyncSnapshotY.data, 
                    modelAsyncSnapshotZ.data,
                  );
                });
              });
        });
  }
  Widget _buildWidgetUseFutureOtherModelAndFutureOtherModelAndStreamOtherModel() {
    return FutureBuilder<T>(
        future: _futureOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return StreamBuilder<Z>(
                    stream: _streamOtherModelZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseWidgetUsingOtherModelAndOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModelAndOtherModel(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }

  Widget _buildWidgetUseFutureOtherModelAndStreamOtherModelAndStreamOtherModel() {
    return FutureBuilder<T>(
        future: _futureOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return StreamBuilder<Z>(
                    stream: _streamOtherModelZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseWidgetUsingOtherModelAndOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModelAndOtherModel(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }
  Widget _buildWidgetUseStreamOtherModelAndStreamOtherModelAndStreamOtherModel() {
    return StreamBuilder<T>(
        stream: _streamOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return StreamBuilder<Z>(
                    stream: _streamOtherModelZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseWidgetUsingOtherModelAndOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModelAndOtherModel(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }

  Widget _buildWidgetUseStreamOtherModelAndStreamOtherModelAndFutureOtherModel() {
    return StreamBuilder<T>(
        stream: _streamOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return FutureBuilder<Z>(
                    future: _futureOtherModelZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseWidgetUsingOtherModelAndOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModelAndOtherModel(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }

  Widget _buildWidgetUseStreamOtherModelAndFutureOtherModelAndFutureOtherModel() {
    return StreamBuilder<T>(
        stream: _streamOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return FutureBuilder<Z>(
                    future: _futureOtherModelZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseWidgetUsingOtherModelAndOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModelAndOtherModel(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }

  Widget _buildWidgetUseStreamOtherModelAndFutureOtherModelAndStreamOtherModel() {
    return StreamBuilder<T>(
        stream: _streamOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return StreamBuilder<Z>(
                    stream: _streamOtherModelZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseWidgetUsingOtherModelAndOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModelAndOtherModel(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }

  Widget _buildWidgetUseFutureOtherModelAndStreamOtherModelAndFutureOtherModel() {
    return FutureBuilder<T>(
        future: _futureOtherModelT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamOtherModelY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return FutureBuilder<Z>(
                    future: _futureOtherModelZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseWidgetUsingOtherModelAndOtherModelAndOtherModel.buildWidgetUsingOtherModelAndOtherModelAndOtherModel(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }
  
}