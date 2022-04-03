import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_three_stream_builder_widget.dart';

enum SelectedReadyThreeStreamBuilderWidget {
  threeFuture,
  twoFutureAndSingleStream,
  singleFutureAndTwoStream,

  threeStream,
  twoStreamAndSingleFuture,
  singleStreamAndTwoFuture,

  singleStreamAndSingleFutureAndSingleStream,
  singleFutureAndSingleStreamAndSingleFuture,
}

//ignore: must_be_immutable
class ReadyThreeStreamBuilderWidget<T,Y,Z> extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  final BaseThreeStreamBuilderWidget<T,Y,Z> _baseThreeStreamBuilderWidget;
  SelectedReadyThreeStreamBuilderWidget _selectedReadyThreeStreamBuilderWidget;

  Stream<T> _streamT;
  Future<T> _futureT;
  Stream<Y> _streamY;
  Future<Y> _futureY;
  Stream<Z> _streamZ;
  Future<Z> _futureZ;

  ReadyThreeStreamBuilderWidget.threeFuture(
      this._baseThreeStreamBuilderWidget,
      this._futureT,
      this._futureY,
      this._futureZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .threeFuture;
  }

  ReadyThreeStreamBuilderWidget.twoFutureAndSingleStream(
      this._baseThreeStreamBuilderWidget,
      this._futureT,
      this._futureY,
      this._streamZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .twoFutureAndSingleStream;
  }

  ReadyThreeStreamBuilderWidget.singleFutureAndTwoStream(
      this._baseThreeStreamBuilderWidget,
      this._futureT,
      this._streamY,
      this._streamZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .singleFutureAndTwoStream;
  }

  ReadyThreeStreamBuilderWidget.threeStream(
      this._baseThreeStreamBuilderWidget,
      this._streamT,
      this._streamY,
      this._streamZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .threeStream;
  }

  ReadyThreeStreamBuilderWidget.twoStreamAndSingleFuture(
      this._baseThreeStreamBuilderWidget,
      this._streamT,
      this._streamY,
      this._futureZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .twoStreamAndSingleFuture;
  }

  ReadyThreeStreamBuilderWidget.singleStreamAndTwoFuture(
      this._baseThreeStreamBuilderWidget,
      this._streamT,
      this._futureY,
      this._futureZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .singleStreamAndTwoFuture;
  }

  ReadyThreeStreamBuilderWidget.singleStreamAndSingleFutureAndSingleStream(
      this._baseThreeStreamBuilderWidget,
      this._streamT,
      this._futureY,
      this._streamZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .singleStreamAndSingleFutureAndSingleStream;
  }

  ReadyThreeStreamBuilderWidget.singleFutureAndSingleStreamAndSingleFuture(
      this._baseThreeStreamBuilderWidget,
      this._futureT,
      this._streamY,
      this._futureZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .singleFutureAndSingleStreamAndSingleFuture;
  }

  @override
  Widget build(BuildContext context) {
    switch(_selectedReadyThreeStreamBuilderWidget) {
      case SelectedReadyThreeStreamBuilderWidget.threeFuture:
        return _buildThreeFutureBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.twoFutureAndSingleStream:
        return _buildTwoFutureAndSingleStreamBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.singleFutureAndTwoStream:
        return _buildSingleFutureAndTwoStreamBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.threeStream:
        return _buildThreeStreamBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.twoStreamAndSingleFuture:
        return _buildTwoStreamAndSingleFutureBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.singleStreamAndTwoFuture:
        return _buildSingleStreamAndTwoFutureBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.singleStreamAndSingleFutureAndSingleStream:
        return _buildSingleStreamAndSingleFutureAndSingleStreamBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.singleFutureAndSingleStreamAndSingleFuture:
        return _buildSingleFutureAndSingleStreamAndSingleFutureBuilderWidget();
      default:
        return _buildThreeFutureBuilderWidget();
    }
  }

  Widget _buildThreeFutureBuilderWidget() {
    return FutureBuilder<T>(
        future: _futureT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return FutureBuilder<Z>(
                    future: _futureZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                {
                  return _baseThreeStreamBuilderWidget.buildThreeStreamBuilderWidget(
                    context,
                    modelAsyncSnapshotT.data,
                    modelAsyncSnapshotY.data, 
                    modelAsyncSnapshotZ.data,
                  );
                });
              });
        });
  }
  Widget _buildTwoFutureAndSingleStreamBuilderWidget() {
    return FutureBuilder<T>(
        future: _futureT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return StreamBuilder<Z>(
                    stream: _streamZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseThreeStreamBuilderWidget.buildThreeStreamBuilderWidget(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }

  Widget _buildSingleFutureAndTwoStreamBuilderWidget() {
    return FutureBuilder<T>(
        future: _futureT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return StreamBuilder<Z>(
                    stream: _streamZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseThreeStreamBuilderWidget.buildThreeStreamBuilderWidget(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }
  Widget _buildThreeStreamBuilderWidget() {
    return StreamBuilder<T>(
        stream: _streamT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return StreamBuilder<Z>(
                    stream: _streamZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseThreeStreamBuilderWidget.buildThreeStreamBuilderWidget(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }

  Widget _buildTwoStreamAndSingleFutureBuilderWidget() {
    return StreamBuilder<T>(
        stream: _streamT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return FutureBuilder<Z>(
                    future: _futureZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseThreeStreamBuilderWidget.buildThreeStreamBuilderWidget(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }

  Widget _buildSingleStreamAndTwoFutureBuilderWidget() {
    return StreamBuilder<T>(
        stream: _streamT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return FutureBuilder<Z>(
                    future: _futureZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseThreeStreamBuilderWidget.buildThreeStreamBuilderWidget(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }

  Widget _buildSingleStreamAndSingleFutureAndSingleStreamBuilderWidget() {
    return StreamBuilder<T>(
        stream: _streamT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return FutureBuilder<Y>(
              future: _futureY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return StreamBuilder<Z>(
                    stream: _streamZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseThreeStreamBuilderWidget.buildThreeStreamBuilderWidget(
                        context,
                        modelAsyncSnapshotT.data,
                        modelAsyncSnapshotY.data,
                        modelAsyncSnapshotZ.data,
                      );
                    });
              });
        });
  }

  Widget _buildSingleFutureAndSingleStreamAndSingleFutureBuilderWidget() {
    return FutureBuilder<T>(
        future: _futureT,
        builder: (BuildContext context, AsyncSnapshot<T> modelAsyncSnapshotT)
        {
          return StreamBuilder<Y>(
              stream: _streamY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshotY)
              {
                return FutureBuilder<Z>(
                    future: _futureZ,
                    builder: (BuildContext context, AsyncSnapshot<Z> modelAsyncSnapshotZ)
                    {
                      return _baseThreeStreamBuilderWidget.buildThreeStreamBuilderWidget(
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