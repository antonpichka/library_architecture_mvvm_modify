import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_number_stream_builder_widget/base_single_stream_builder_widget.dart';

enum SelectedReadySingleStreamBuilderWidget {
  streamBuilderWidget,
  futureBuilderWidget,
}

// ignore: must_be_immutable
class ReadySingleStreamBuilderWidget<T> extends StatelessWidget
{
  final BaseSingleStreamBuilderWidget<T> _baseSingleStreamBuilderWidget;
  SelectedReadySingleStreamBuilderWidget _selectedReadySingleStreamBuilderWidget;

  Stream<T> _stream;
  Future<T> _future;

  ReadySingleStreamBuilderWidget.streamBuilderWidget(
      this._baseSingleStreamBuilderWidget,
      this._stream,
      {Key key}) : super(key: key)
  {
    _selectedReadySingleStreamBuilderWidget = SelectedReadySingleStreamBuilderWidget.streamBuilderWidget;
  }

  ReadySingleStreamBuilderWidget.futureBuilderWidget(
      this._baseSingleStreamBuilderWidget,
      this._future,
      {Key key}) : super(key: key)
  {
    _selectedReadySingleStreamBuilderWidget = SelectedReadySingleStreamBuilderWidget.futureBuilderWidget;
  }
  
  @override
  Widget build(BuildContext context) {
    switch(_selectedReadySingleStreamBuilderWidget) {
      case SelectedReadySingleStreamBuilderWidget.streamBuilderWidget:
        return _buildStreamBuilderWidget();
      case SelectedReadySingleStreamBuilderWidget.futureBuilderWidget:
        return _buildFutureBuilderWidget();
      default:
        return _buildStreamBuilderWidget();
    }
  }

  Widget _buildStreamBuilderWidget() {
    return StreamBuilder<T>(
        stream: _stream,
        builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
        {
          return _baseSingleStreamBuilderWidget.buildSingleStreamBuilderWidget(context, asyncSnapshot.data);
        });
  }

  Widget _buildFutureBuilderWidget() {
    return FutureBuilder<T>(
        future: _future,
        builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
        {
          return _baseSingleStreamBuilderWidget.buildSingleStreamBuilderWidget(context, asyncSnapshot.data);
        });
  }
}