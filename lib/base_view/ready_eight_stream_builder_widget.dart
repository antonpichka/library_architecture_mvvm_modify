import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_eight_stream_builder_widget.dart';

enum SelectedReadyEightStreamBuilderWidget {
  eightFuture,
  eightStream,
}

//ignore: must_be_immutable
class ReadyEightStreamBuilderWidget<T,Y,Z,X,C,V,B,N> extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  final BaseEightStreamBuilderWidget<T,Y,Z,X,C,V,B,N> _baseEightStreamBuilderWidget;
  SelectedReadyEightStreamBuilderWidget _selectedReadyEightStreamBuilderWidget;

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

  Stream<V> _streamV;
  Future<V> _futureV;

  Stream<B> _streamB;
  Future<B> _futureB;

  Stream<N> _streamN;
  Future<N> _futureN;

  ReadyEightStreamBuilderWidget.eightFuture(
      this._baseEightStreamBuilderWidget,
      this._futureT,
      this._futureY,
      this._futureZ,
      this._futureX,
      this._futureC,
      this._futureV,
      this._futureB,
      this._futureN,
      {Key key}) : super(key: key)
  {
    _selectedReadyEightStreamBuilderWidget = SelectedReadyEightStreamBuilderWidget
        .eightFuture;
  }

  ReadyEightStreamBuilderWidget.eightStream(
      this._baseEightStreamBuilderWidget,
      this._streamT,
      this._streamY,
      this._streamZ,
      this._streamX,
      this._streamC,
      this._streamV,
      this._streamB,
      this._streamN,
      {Key key}) : super(key: key)
  {
    _selectedReadyEightStreamBuilderWidget = SelectedReadyEightStreamBuilderWidget
        .eightStream;
  }

  @override
  Widget build(BuildContext context) {
    switch(_selectedReadyEightStreamBuilderWidget) {
      case SelectedReadyEightStreamBuilderWidget.eightFuture:
        return _buildEightFutureBuilderWidget();
      case SelectedReadyEightStreamBuilderWidget.eightStream:
        return _buildEightStreamBuilderWidget();
      default:
        return _buildEightFutureBuilderWidget();
    }
  }

  Widget _buildEightFutureBuilderWidget() {
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
                                  return FutureBuilder<V>(
                                      future: _futureV,
                                      builder: (BuildContext context, AsyncSnapshot<V> modelAsyncSnapshotV)
                                      {
                                        return FutureBuilder<B>(
                                            future: _futureB,
                                            builder: (BuildContext context, AsyncSnapshot<B> modelAsyncSnapshotB)
                                            {
                                              return FutureBuilder<N>(
                                                  future: _futureN,
                                                  builder: (BuildContext context, AsyncSnapshot<N> modelAsyncSnapshotN)
                                                  {
                                                    return _baseEightStreamBuilderWidget.buildEightStreamBuilderWidget(
                                                      context,
                                                      modelAsyncSnapshotT.data,
                                                      modelAsyncSnapshotY.data,
                                                      modelAsyncSnapshotZ.data,
                                                      modelAsyncSnapshotX.data,
                                                      modelAsyncSnapshotC.data,
                                                      modelAsyncSnapshotV.data,
                                                      modelAsyncSnapshotB.data,
                                                      modelAsyncSnapshotN.data,
                                                    );
                                                  });
                                            });
                                      });
                                });
                          });
                    });
              });
        });
  }

  Widget _buildEightStreamBuilderWidget() {
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
                                  return StreamBuilder<V>(
                                      stream: _streamV,
                                      builder: (BuildContext context, AsyncSnapshot<V> modelAsyncSnapshotV)
                                      {
                                        return StreamBuilder<B>(
                                            stream: _streamB,
                                            builder: (BuildContext context, AsyncSnapshot<B> modelAsyncSnapshotB)
                                            {
                                              return StreamBuilder<N>(
                                                  stream: _streamN,
                                                  builder: (BuildContext context, AsyncSnapshot<N> modelAsyncSnapshotN)
                                                  {
                                                    return _baseEightStreamBuilderWidget.buildEightStreamBuilderWidget(
                                                        context,
                                                        modelAsyncSnapshotT.data,
                                                        modelAsyncSnapshotY.data,
                                                        modelAsyncSnapshotZ.data,
                                                        modelAsyncSnapshotX.data,
                                                        modelAsyncSnapshotC.data,
                                                        modelAsyncSnapshotV.data,
                                                        modelAsyncSnapshotB.data,
                                                        modelAsyncSnapshotN.data
                                                    );
                                                  });
                                            });
                                      });
                                });
                          });
                    });
              });
        });
  }

}