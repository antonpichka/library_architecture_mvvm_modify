import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_four_stream_builder_widget.dart';

enum SelectedReadyFourStreamBuilderWidget {
  fourFuture,
  fourStream,
}

//ignore: must_be_immutable
class ReadyFourStreamBuilderWidget<T,Y,Z,X> extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  final BaseFourStreamBuilderWidget<T,Y,Z,X> _baseFourStreamBuilderWidget;
  SelectedReadyFourStreamBuilderWidget _selectedReadyFourStreamBuilderWidget;

  Stream<T> _streamT;
  Future<T> _futureT;
  
  Stream<Y> _streamY;
  Future<Y> _futureY;
  
  Stream<Z> _streamZ;
  Future<Z> _futureZ;

  Stream<X> _streamX;
  Future<X> _futureX;

  ReadyFourStreamBuilderWidget.fourFuture(
      this._baseFourStreamBuilderWidget,
      this._futureT,
      this._futureY,
      this._futureZ,
      this._futureX,
      {Key key}) : super(key: key)
  {
    _selectedReadyFourStreamBuilderWidget = SelectedReadyFourStreamBuilderWidget
        .fourFuture;
  }

  ReadyFourStreamBuilderWidget.fourStream(
      this._baseFourStreamBuilderWidget,
      this._streamT,
      this._streamY,
      this._streamZ,
      this._streamX,
      {Key key}) : super(key: key)
  {
    _selectedReadyFourStreamBuilderWidget = SelectedReadyFourStreamBuilderWidget
        .fourStream;
  }
  
  @override
  Widget build(BuildContext context) {
    switch(_selectedReadyFourStreamBuilderWidget) {
      case SelectedReadyFourStreamBuilderWidget.fourFuture:
        return _buildFourFutureBuilderWidget();
      case SelectedReadyFourStreamBuilderWidget.fourStream:
        return _buildFourStreamBuilderWidget();
      default:
        return _buildFourFutureBuilderWidget();
    }
  }

  Widget _buildFourFutureBuilderWidget() {
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
                      return FutureBuilder<X>(
                          future: _futureX,
                          builder: (BuildContext context, AsyncSnapshot<X> modelAsyncSnapshotX)
                          {
                            return _baseFourStreamBuilderWidget.buildFourStreamBuilderWidget(
                              context,
                              modelAsyncSnapshotT.data,
                              modelAsyncSnapshotY.data,
                              modelAsyncSnapshotZ.data,
                              modelAsyncSnapshotX.data,
                            );
                          });
                    });
              });
        });
  }
 
  Widget _buildFourStreamBuilderWidget() {
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
                      return StreamBuilder<X>(
                          stream: _streamX,
                          builder: (BuildContext context, AsyncSnapshot<X> modelAsyncSnapshotX)
                          {
                            return _baseFourStreamBuilderWidget.buildFourStreamBuilderWidget(
                              context,
                              modelAsyncSnapshotT.data,
                              modelAsyncSnapshotY.data,
                              modelAsyncSnapshotZ.data,
                              modelAsyncSnapshotX.data
                            );
                          });
                    });
              });
        });
  }
  
}