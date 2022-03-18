import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_three_stream_builder_widget.dart';

enum SelectedReadyThreeStreamBuilderWidget {
  futureBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget,
  futureBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget,
  futureBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget,

  streamBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget,
  streamBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget,
  streamBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget,

  streamBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget,
  futureBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget,
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

  ReadyThreeStreamBuilderWidget.futureBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget(
      this._baseThreeStreamBuilderWidget,
      this._futureT,
      this._futureY,
      this._futureZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .futureBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget;
  }

  ReadyThreeStreamBuilderWidget.futureBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget(
      this._baseThreeStreamBuilderWidget,
      this._futureT,
      this._futureY,
      this._streamZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .futureBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget;
  }

  ReadyThreeStreamBuilderWidget.futureBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget(
      this._baseThreeStreamBuilderWidget,
      this._futureT,
      this._streamY,
      this._streamZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .futureBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget;
  }

  ReadyThreeStreamBuilderWidget.streamBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget(
      this._baseThreeStreamBuilderWidget,
      this._streamT,
      this._streamY,
      this._streamZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .streamBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget;
  }

  ReadyThreeStreamBuilderWidget.streamBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget(
      this._baseThreeStreamBuilderWidget,
      this._streamT,
      this._streamY,
      this._futureZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .streamBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget;
  }

  ReadyThreeStreamBuilderWidget.streamBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget(
      this._baseThreeStreamBuilderWidget,
      this._streamT,
      this._futureY,
      this._futureZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .streamBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget;
  }

  ReadyThreeStreamBuilderWidget.streamBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget(
      this._baseThreeStreamBuilderWidget,
      this._streamT,
      this._futureY,
      this._streamZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .streamBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget;
  }

  ReadyThreeStreamBuilderWidget.futureBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget(
      this._baseThreeStreamBuilderWidget,
      this._futureT,
      this._streamY,
      this._futureZ,
      {Key key}) : super(key: key)
  {
    _selectedReadyThreeStreamBuilderWidget = SelectedReadyThreeStreamBuilderWidget
        .futureBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget;
  }

  @override
  Widget build(BuildContext context) {
    switch(_selectedReadyThreeStreamBuilderWidget) {
      case SelectedReadyThreeStreamBuilderWidget.futureBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget:
        return _buildFutureBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.futureBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget:
        return _buildFutureBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.futureBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget:
        return _buildFutureBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.streamBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget:
        return _buildStreamBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.streamBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget:
        return _buildStreamBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.streamBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget:
        return _buildStreamBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.streamBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget:
        return _buildStreamBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget();
      case SelectedReadyThreeStreamBuilderWidget.futureBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget:
        return _buildFutureBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget();
      default:
        return _buildFutureBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget();
    }
  }

  Widget _buildFutureBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget() {
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
  Widget _buildFutureBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget() {
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

  Widget _buildFutureBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget() {
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
  Widget _buildStreamBuilderWidgetAndStreamBuilderWidgetAndStreamBuilderWidget() {
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

  Widget _buildStreamBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget() {
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

  Widget _buildStreamBuilderWidgetAndFutureBuilderWidgetAndFutureBuilderWidget() {
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

  Widget _buildStreamBuilderWidgetAndFutureBuilderWidgetAndStreamBuilderWidget() {
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

  Widget _buildFutureBuilderWidgetAndStreamBuilderWidgetAndFutureBuilderWidget() {
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