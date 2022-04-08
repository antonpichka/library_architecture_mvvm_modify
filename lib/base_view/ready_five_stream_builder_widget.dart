import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_five_stream_builder_widget.dart';

enum SelectedReadyFiveStreamBuilderWidget {
  fiveFuture,
  fiveStream,
}

//ignore: must_be_immutable
class ReadyFiveStreamBuilderWidget<T,Y,Z,X,C> extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  final BaseFiveStreamBuilderWidget<T,Y,Z,X,C> _baseFiveStreamBuilderWidget;
  SelectedReadyFiveStreamBuilderWidget _selectedReadyFiveStreamBuilderWidget;

  Stream<T> _streamT;
  Future<T> _futureT;

  Stream<Y> _streamY;
  Future<Y> _futureY;

  Stream<Z> _streamZ;
  Future<Z> _futureZ;

  Stream<X> _streamX;
  Future<X> _futureX;

  Stream<C> _streamC;
  Future<C> _futureC;

  ReadyFiveStreamBuilderWidget.fiveFuture(
      this._baseFiveStreamBuilderWidget,
      this._futureT,
      this._futureY,
      this._futureZ,
      this._futureX,
      this._futureC,
      {Key key}) : super(key: key)
  {
    _selectedReadyFiveStreamBuilderWidget = SelectedReadyFiveStreamBuilderWidget
        .fiveFuture;
  }

  ReadyFiveStreamBuilderWidget.fiveStream(
      this._baseFiveStreamBuilderWidget,
      this._streamT,
      this._streamY,
      this._streamZ,
      this._streamX,
      this._streamC,
      {Key key}) : super(key: key)
  {
    _selectedReadyFiveStreamBuilderWidget = SelectedReadyFiveStreamBuilderWidget
        .fiveStream;
  }

  @override
  Widget build(BuildContext context) {
    switch(_selectedReadyFiveStreamBuilderWidget) {
      case SelectedReadyFiveStreamBuilderWidget.fiveFuture:
        return _buildFiveFutureBuilderWidget();
      case SelectedReadyFiveStreamBuilderWidget.fiveStream:
        return _buildFiveStreamBuilderWidget();
      default:
        return _buildFiveFutureBuilderWidget();
    }
  }

  Widget _buildFiveFutureBuilderWidget() {
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
                            return FutureBuilder<C>(
                                future: _futureC,
                                builder: (BuildContext context, AsyncSnapshot<C> modelAsyncSnapshotC)
                                {
                                  return _baseFiveStreamBuilderWidget.buildFiveStreamBuilderWidget(
                                    context, 
                                    modelAsyncSnapshotT.data,
                                    modelAsyncSnapshotY.data,
                                    modelAsyncSnapshotZ.data,
                                    modelAsyncSnapshotX.data,
                                    modelAsyncSnapshotC.data,
                                  );
                                });
                          });
                    });
              });
        });
  }

  Widget _buildFiveStreamBuilderWidget() {
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
                            return StreamBuilder<C>(
                                stream: _streamC,
                                builder: (BuildContext context, AsyncSnapshot<C> modelAsyncSnapshotC)
                                {
                                  return _baseFiveStreamBuilderWidget.buildFiveStreamBuilderWidget(
                                      context,
                                      modelAsyncSnapshotT.data,
                                      modelAsyncSnapshotY.data,
                                      modelAsyncSnapshotZ.data,
                                      modelAsyncSnapshotX.data,
                                      modelAsyncSnapshotC.data
                                  );
                                });
                          });
                    });
              });
        });
  }

}