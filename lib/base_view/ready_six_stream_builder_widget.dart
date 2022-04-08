import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_six_stream_builder_widget.dart';

enum SelectedReadySixStreamBuilderWidget {
  sixFuture,
  sixStream,
}

//ignore: must_be_immutable
class ReadySixStreamBuilderWidget<T,Y,Z,X,C,V> extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  final BaseSixStreamBuilderWidget<T,Y,Z,X,C,V> _baseSixStreamBuilderWidget;
  SelectedReadySixStreamBuilderWidget _selectedReadySixStreamBuilderWidget;

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

  ReadySixStreamBuilderWidget.sixFuture(
      this._baseSixStreamBuilderWidget,
      this._futureT,
      this._futureY,
      this._futureZ,
      this._futureX,
      this._futureC,
      this._futureV,
      {Key key}) : super(key: key)
  {
    _selectedReadySixStreamBuilderWidget = SelectedReadySixStreamBuilderWidget
        .sixFuture;
  }

  ReadySixStreamBuilderWidget.sixStream(
      this._baseSixStreamBuilderWidget,
      this._streamT,
      this._streamY,
      this._streamZ,
      this._streamX,
      this._streamC,
      this._streamV,
      {Key key}) : super(key: key)
  {
    _selectedReadySixStreamBuilderWidget = SelectedReadySixStreamBuilderWidget
        .sixStream;
  }

  @override
  Widget build(BuildContext context) {
    switch(_selectedReadySixStreamBuilderWidget) {
      case SelectedReadySixStreamBuilderWidget.sixFuture:
        return _buildSixFutureBuilderWidget();
      case SelectedReadySixStreamBuilderWidget.sixStream:
        return _buildSixStreamBuilderWidget();
      default:
        return _buildSixFutureBuilderWidget();
    }
  }

  Widget _buildSixFutureBuilderWidget() {
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
                                        return _baseSixStreamBuilderWidget.buildSixStreamBuilderWidget(
                                            context,
                                            modelAsyncSnapshotT.data,
                                            modelAsyncSnapshotY.data,
                                            modelAsyncSnapshotZ.data,
                                            modelAsyncSnapshotX.data,
                                            modelAsyncSnapshotC.data,
                                            modelAsyncSnapshotV.data
                                        );
                                      });
                                });
                          });
                    });
              });
        });
  }

  Widget _buildSixStreamBuilderWidget() {
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
                                        return _baseSixStreamBuilderWidget.buildSixStreamBuilderWidget(
                                            context,
                                            modelAsyncSnapshotT.data,
                                            modelAsyncSnapshotY.data,
                                            modelAsyncSnapshotZ.data,
                                            modelAsyncSnapshotX.data,
                                            modelAsyncSnapshotC.data,
                                            modelAsyncSnapshotV.data
                                        );
                                      });
                                });
                          });
                    });
              });
        });
  }

}