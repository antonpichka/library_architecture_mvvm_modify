import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_two_stream_builder_widget.dart';

enum SelectedReadyTwoStreamBuilderWidget {
  streamBuilderWidgetAndStreamBuilderWidget,
  futureBuilderWidgetAndFutureBuilderWidget,
  futureBuilderWidgetAndStreamBuilderWidget,
  streamBuilderWidgetAndFutureBuilderWidget,
}

//ignore: must_be_immutable
class ReadyTwoStreamBuilderWidget<T,Y> extends StatelessWidget
{
  final BaseTwoStreamBuilderWidget<T,Y> _baseTwoStreamBuilderWidget;
  SelectedReadyTwoStreamBuilderWidget _selectedReadyTwoStreamBuilderWidget;

  Stream<T> _streamT;
  Future<T> _futureT;

  Stream<Y> _streamY;
  Future<Y> _futureY;
  
  ReadyTwoStreamBuilderWidget.streamBuilderWidgetAndStreamBuilderWidget(
      this._baseTwoStreamBuilderWidget,
      this._streamT,
      this._streamY,
      {Key key}) : super(key: key)
  {
    _selectedReadyTwoStreamBuilderWidget = SelectedReadyTwoStreamBuilderWidget
        .streamBuilderWidgetAndStreamBuilderWidget;
  }

  ReadyTwoStreamBuilderWidget.futureBuilderWidgetAndFutureBuilderWidget(
      this._baseTwoStreamBuilderWidget,
      this._futureT,
      this._futureY,
      {Key key}) : super(key: key)
  {
    _selectedReadyTwoStreamBuilderWidget = SelectedReadyTwoStreamBuilderWidget
        .futureBuilderWidgetAndFutureBuilderWidget;
  }

  ReadyTwoStreamBuilderWidget.futureBuilderWidgetAndStreamBuilderWidget(
      this._baseTwoStreamBuilderWidget,
      this._futureT,
      this._streamY,
      {Key key}) : super(key: key)
  {
    _selectedReadyTwoStreamBuilderWidget = SelectedReadyTwoStreamBuilderWidget
        .futureBuilderWidgetAndStreamBuilderWidget;
  }

  ReadyTwoStreamBuilderWidget.streamBuilderWidgetAndFutureBuilderWidget(
      this._baseTwoStreamBuilderWidget,
      this._streamT,
      this._futureY,
      {Key key}) : super(key: key)
  {
    _selectedReadyTwoStreamBuilderWidget = SelectedReadyTwoStreamBuilderWidget
        .streamBuilderWidgetAndFutureBuilderWidget;
  }

  @override
  Widget build(BuildContext context) {
    switch(_selectedReadyTwoStreamBuilderWidget) {
      case SelectedReadyTwoStreamBuilderWidget.streamBuilderWidgetAndStreamBuilderWidget:
        return _buildStreamBuilderWidgetAndStreamBuilderWidget();
      case SelectedReadyTwoStreamBuilderWidget.futureBuilderWidgetAndFutureBuilderWidget:
        return _buildFutureBuilderWidgetAndFutureBuilderWidget();
      case SelectedReadyTwoStreamBuilderWidget.futureBuilderWidgetAndStreamBuilderWidget:
        return _buildFutureBuilderWidgetAndStreamBuilderWidget();
      case SelectedReadyTwoStreamBuilderWidget.streamBuilderWidgetAndFutureBuilderWidget:
        return _buildStreamBuilderWidgetAndFutureBuilderWidget();
      default:
        return _buildStreamBuilderWidgetAndStreamBuilderWidget();
    }
  }

  Widget _buildStreamBuilderWidgetAndStreamBuilderWidget() {
    return StreamBuilder<T>(
        stream: _streamT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return _baseTwoStreamBuilderWidget.buildTwoStreamBuilderWidget(
                    context,
                    modelAsyncSnapshotT.data,
                    modelAsyncSnapshotY.data
                );
              });
        });
  }

  Widget _buildFutureBuilderWidgetAndFutureBuilderWidget() {
    return FutureBuilder<T>(
        future: _futureT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return _baseTwoStreamBuilderWidget.buildTwoStreamBuilderWidget(
                    context,
                    modelAsyncSnapshotT.data,
                    modelAsyncSnapshotY.data
                );
              });
        });
  }

  Widget _buildFutureBuilderWidgetAndStreamBuilderWidget() {
    return FutureBuilder<T>(
        future: _futureT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return _baseTwoStreamBuilderWidget.buildTwoStreamBuilderWidget(
                    context,
                    modelAsyncSnapshotT.data,
                    modelAsyncSnapshotY.data
                );
              });
        });
  }

  Widget _buildStreamBuilderWidgetAndFutureBuilderWidget() {
    return StreamBuilder<T>(
        stream: _streamT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return _baseTwoStreamBuilderWidget.buildTwoStreamBuilderWidget(
                    context,
                    modelAsyncSnapshotT.data,
                    modelAsyncSnapshotY.data
                );
              });
        });
  }
  
}