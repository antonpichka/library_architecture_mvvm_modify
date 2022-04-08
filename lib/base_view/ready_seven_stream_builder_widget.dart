import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_seven_stream_builder_widget.dart';

enum SelectedReadySevenStreamBuilderWidget {
  sevenFuture,
  sevenStream,
}

//ignore: must_be_immutable
class ReadySevenStreamBuilderWidget<T,Y,Z,X,C,V,B> extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  final BaseSevenStreamBuilderWidget<T,Y,Z,X,C,V,B> _baseSevenStreamBuilderWidget;
  SelectedReadySevenStreamBuilderWidget _selectedReadySevenStreamBuilderWidget;

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

  ReadySevenStreamBuilderWidget.sevenFuture(
      this._baseSevenStreamBuilderWidget,
      this._futureT,
      this._futureY,
      this._futureZ,
      this._futureX,
      this._futureC,
      this._futureV,
      this._futureB,
      {Key key}) : super(key: key)
  {
    _selectedReadySevenStreamBuilderWidget = SelectedReadySevenStreamBuilderWidget
        .sevenFuture;
  }

  ReadySevenStreamBuilderWidget.sevenStream(
      this._baseSevenStreamBuilderWidget,
      this._streamT,
      this._streamY,
      this._streamZ,
      this._streamX,
      this._streamC,
      this._streamV,
      this._streamB,
      {Key key}) : super(key: key)
  {
    _selectedReadySevenStreamBuilderWidget = SelectedReadySevenStreamBuilderWidget
        .sevenStream;
  }

  @override
  Widget build(BuildContext context) {
    switch(_selectedReadySevenStreamBuilderWidget) {
      case SelectedReadySevenStreamBuilderWidget.sevenFuture:
        return _buildSevenFutureBuilderWidget();
      case SelectedReadySevenStreamBuilderWidget.sevenStream:
        return _buildSevenStreamBuilderWidget();
      default:
        return _buildSevenFutureBuilderWidget();
    }
  }

  Widget _buildSevenFutureBuilderWidget() {
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
                                              return _baseSevenStreamBuilderWidget.buildSevenStreamBuilderWidget(
                                                  context,
                                                  modelAsyncSnapshotT.data,
                                                  modelAsyncSnapshotY.data,
                                                  modelAsyncSnapshotZ.data,
                                                  modelAsyncSnapshotX.data,
                                                  modelAsyncSnapshotC.data,
                                                  modelAsyncSnapshotV.data,
                                                  modelAsyncSnapshotB.data
                                              );
                                            });
                                      });
                                });
                          });
                    });
              });
        });
  }

  Widget _buildSevenStreamBuilderWidget() {
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
                                              return _baseSevenStreamBuilderWidget.buildSevenStreamBuilderWidget(
                                                  context,
                                                  modelAsyncSnapshotT.data,
                                                  modelAsyncSnapshotY.data,
                                                  modelAsyncSnapshotZ.data,
                                                  modelAsyncSnapshotX.data,
                                                  modelAsyncSnapshotC.data,
                                                  modelAsyncSnapshotV.data,
                                                  modelAsyncSnapshotB.data
                                              );
                                            });
                                      });
                                });
                          });
                    });
              });
        });
  }

}