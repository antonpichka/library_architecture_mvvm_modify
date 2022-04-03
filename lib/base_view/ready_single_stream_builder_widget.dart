import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_single_stream_builder_widget.dart';

enum SelectedReadySingleStreamBuilderWidget {
  singleStream,
  singleFuture,
}

// ignore: must_be_immutable
class ReadySingleStreamBuilderWidget<T> extends StatelessWidget
{
  final BaseSingleStreamBuilderWidget<T> _baseSingleStreamBuilderWidget;
  SelectedReadySingleStreamBuilderWidget _selectedReadySingleStreamBuilderWidget;

  Stream<T> _stream;
  Future<T> _future;

  ReadySingleStreamBuilderWidget.singleStream(
      this._baseSingleStreamBuilderWidget,
      this._stream,
      {Key key}) : super(key: key)
  {
    _selectedReadySingleStreamBuilderWidget = SelectedReadySingleStreamBuilderWidget.singleStream;
  }

  ReadySingleStreamBuilderWidget.singleFuture(
      this._baseSingleStreamBuilderWidget,
      this._future,
      {Key key}) : super(key: key)
  {
    _selectedReadySingleStreamBuilderWidget = SelectedReadySingleStreamBuilderWidget.singleFuture;
  }
  
  @override
  Widget build(BuildContext context) {
    switch(_selectedReadySingleStreamBuilderWidget) {
      case SelectedReadySingleStreamBuilderWidget.singleStream:
        return _buildSingleStreamBuilderWidget();
      case SelectedReadySingleStreamBuilderWidget.singleFuture:
        return _buildSingleFutureBuilderWidget();
      default:
        return _buildSingleStreamBuilderWidget();
    }
  }

  Widget _buildSingleStreamBuilderWidget() {
    return StreamBuilder<T>(
        stream: _stream,
        builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
        {
          return _baseSingleStreamBuilderWidget.buildSingleStreamBuilderWidget(context, asyncSnapshot.data);
        });
  }

  Widget _buildSingleFutureBuilderWidget() {
    return FutureBuilder<T>(
        future: _future,
        builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
        {
          return _baseSingleStreamBuilderWidget.buildSingleStreamBuilderWidget(context, asyncSnapshot.data);
        });
  }
}