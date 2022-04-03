import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_two_stream_builder_widget.dart';

enum SelectedReadyTwoStreamBuilderWidget {
  twoStream,
  twoFuture,
  singleFutureAndSingleStream,
  singleStreamAndSingleFuture,
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
  
  ReadyTwoStreamBuilderWidget.twoStream(
      this._baseTwoStreamBuilderWidget,
      this._streamT,
      this._streamY,
      {Key key}) : super(key: key)
  {
    _selectedReadyTwoStreamBuilderWidget = SelectedReadyTwoStreamBuilderWidget
        .twoStream;
  }

  ReadyTwoStreamBuilderWidget.twoFuture(
      this._baseTwoStreamBuilderWidget,
      this._futureT,
      this._futureY,
      {Key key}) : super(key: key)
  {
    _selectedReadyTwoStreamBuilderWidget = SelectedReadyTwoStreamBuilderWidget
        .twoFuture;
  }

  ReadyTwoStreamBuilderWidget.singleFutureAndSingleStream(
      this._baseTwoStreamBuilderWidget,
      this._futureT,
      this._streamY,
      {Key key}) : super(key: key)
  {
    _selectedReadyTwoStreamBuilderWidget = SelectedReadyTwoStreamBuilderWidget
        .singleFutureAndSingleStream;
  }

  ReadyTwoStreamBuilderWidget.singleStreamAndSingleFuture(
      this._baseTwoStreamBuilderWidget,
      this._streamT,
      this._futureY,
      {Key key}) : super(key: key)
  {
    _selectedReadyTwoStreamBuilderWidget = SelectedReadyTwoStreamBuilderWidget
        .singleStreamAndSingleFuture;
  }

  @override
  Widget build(BuildContext context) {
    switch(_selectedReadyTwoStreamBuilderWidget) {
      case SelectedReadyTwoStreamBuilderWidget.twoStream:
        return _buildTwoStreamBuilderWidget();
      case SelectedReadyTwoStreamBuilderWidget.twoFuture:
        return _buildTwoFutureBuilderWidget();
      case SelectedReadyTwoStreamBuilderWidget.singleFutureAndSingleStream:
        return _buildSingleFutureAndSingleStreamBuilderWidget();
      case SelectedReadyTwoStreamBuilderWidget.singleStreamAndSingleFuture:
        return _buildSingleStreamAndSingleFutureBuilderWidget();
      default:
        return _buildTwoStreamBuilderWidget();
    }
  }

  Widget _buildTwoStreamBuilderWidget() {
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

  Widget _buildTwoFutureBuilderWidget() {
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

  Widget _buildSingleFutureAndSingleStreamBuilderWidget() {
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

  Widget _buildSingleStreamAndSingleFutureBuilderWidget() {
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