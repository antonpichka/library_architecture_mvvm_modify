// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget_using_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget_using_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_single_widget/base_single_widget_using_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_single_widget/base_single_widget_using_model_domain.dart';

enum SelectedSingleStreamBuilderWidget {
  SINGLE_WIDGET_USE_STREAM_MODEL_DOMAIN,
  SINGLE_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN,
  SINGLE_WIDGET_USE_FUTURE_MODEL_DOMAIN,
  SINGLE_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN,
  
  ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_FUTURE_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN,
}

// ignore: must_be_immutable
class SingleStreamBuilderWidget<T extends BaseModelDomain> extends StatelessWidget
{
  final Widget _emptyWidgetOrDefaultWidget;
  Widget _loadingWidget;
  SelectedSingleStreamBuilderWidget _enumSelectedStreamBuilderWidget;

  BaseSingleWidgetUsingModelDomain<T> _baseSingleWidgetUsingModelDomain;
  BaseSingleWidgetUsingListModelDomain<T> _baseSingleWidgetUsingListModelDomain;

  BaseArrayWidgetUsingModelDomain<T> _baseArrayWidgetUsingModelDomain;
  BaseArrayWidgetUsingListModelDomain<T> _baseArrayWidgetUsingListModelDomain;

  Stream<T> _streamModelDomain;
  Future<T> _futureModelDomain;
  Stream<List<T>> _streamListModelDomain;
  Future<List<T>> _futureListModelDomain;

  SingleStreamBuilderWidget.singleWidgetUseStreamModelDomain(
      this._baseSingleWidgetUsingModelDomain,
      this._streamModelDomain,
      this._emptyWidgetOrDefaultWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget =
        SelectedSingleStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidget.singleWidgetUseStreamListModelDomain(
      this._baseSingleWidgetUsingListModelDomain,
      this._streamListModelDomain,
      this._emptyWidgetOrDefaultWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidget.singleWidgetUseFutureModelDomain(
      this._baseSingleWidgetUsingModelDomain,
      this._futureModelDomain,
      this._emptyWidgetOrDefaultWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidget.SINGLE_WIDGET_USE_FUTURE_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidget.singleWidgetUseFutureListModelDomain(
      this._baseSingleWidgetUsingListModelDomain,
      this._futureListModelDomain,
      this._emptyWidgetOrDefaultWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidget.SINGLE_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidget.arrayWidgetUseStreamModelDomain(
      this._baseArrayWidgetUsingModelDomain,
      this._streamModelDomain,
      this._emptyWidgetOrDefaultWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidget.arrayWidgetUseStreamListModelDomain(
      this._baseArrayWidgetUsingListModelDomain,
      this._streamListModelDomain,
      this._emptyWidgetOrDefaultWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidget.arrayWidgetUseFutureModelDomain(
      this._baseArrayWidgetUsingModelDomain,
      this._futureModelDomain,
      this._emptyWidgetOrDefaultWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidget.arrayWidgetUseFutureListModelDomain(
      this._baseArrayWidgetUsingListModelDomain,
      this._futureListModelDomain,
      this._emptyWidgetOrDefaultWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN;
  }

    @override
    Widget build(BuildContext context) {
      switch(_enumSelectedStreamBuilderWidget) {
        case SelectedSingleStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_MODEL_DOMAIN:
          return _buildSingleStreamBuilderWidgetUsingModelDomain();
        case SelectedSingleStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN:
          return _buildSingleStreamBuilderWidgetUsingListModelDomain();
        case SelectedSingleStreamBuilderWidget.SINGLE_WIDGET_USE_FUTURE_MODEL_DOMAIN:
          return _buildSingleFutureBuilderWidgetUsingModelDomain();
        case SelectedSingleStreamBuilderWidget.SINGLE_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN:
          return _buildSingleFutureBuilderWidgetUsingListModelDomain();
        case SelectedSingleStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN:
          return _buildArrayStreamBuilderWidgetUsingModelDomain();
        case SelectedSingleStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN:
          return _buildArrayStreamBuilderWidgetUsingListModelDomain();
        case SelectedSingleStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_MODEL_DOMAIN:
          return _buildArrayFutureBuilderWidgetUsingModelDomain();
        case SelectedSingleStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN:
          return _buildArrayFutureBuilderWidgetUsingListModelDomain();
        default:
          return _buildSingleStreamBuilderWidgetUsingModelDomain();
      }
    }

    Widget _buildSingleStreamBuilderWidgetUsingModelDomain() {
      return StreamBuilder<T>(
          stream: _streamModelDomain,
          builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              T domainModel = asyncSnapshot.data;
              return _baseSingleWidgetUsingModelDomain.buildSingleWidgetUsingModelDomain(context, domainModel);
            }
            return _emptyWidgetOrDefaultWidget;
          }
      );
    }

    Widget _buildSingleStreamBuilderWidgetUsingListModelDomain() {
      return StreamBuilder<List<T>>(
          stream: _streamListModelDomain,
          builder: (BuildContext context, AsyncSnapshot<List<T>> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              List<T> domainListModel = asyncSnapshot.data ?? List.empty();
              if(domainListModel.isEmpty) {
                return _emptyWidgetOrDefaultWidget;
              }
              return _baseSingleWidgetUsingListModelDomain.buildSingleWidgetUsingListModelDomain(context, domainListModel);
            }
            return _emptyWidgetOrDefaultWidget;
          });
    }

    Widget _buildSingleFutureBuilderWidgetUsingModelDomain() {
      return FutureBuilder<T>(
          future: _futureModelDomain,
          builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              T domainModel = asyncSnapshot.data;
              return _baseSingleWidgetUsingModelDomain.buildSingleWidgetUsingModelDomain(context, domainModel);
            }
            return _emptyWidgetOrDefaultWidget;
          }
      );
    }

    Widget _buildSingleFutureBuilderWidgetUsingListModelDomain() {
      return FutureBuilder<List<T>>(
          future: _futureListModelDomain,
          builder: (BuildContext context, AsyncSnapshot<List<T>> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              List<T> domainListModel = asyncSnapshot.data ?? List.empty();
              if(domainListModel.isEmpty) {
                return _emptyWidgetOrDefaultWidget;
              }
              return _baseSingleWidgetUsingListModelDomain.buildSingleWidgetUsingListModelDomain(context, domainListModel);
            }
            return _emptyWidgetOrDefaultWidget;
          });
    }

    Widget _buildArrayStreamBuilderWidgetUsingModelDomain() {
      return StreamBuilder<T>(
          stream: _streamModelDomain,
          builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              T domainModel = asyncSnapshot.data;
              return _baseArrayWidgetUsingModelDomain.buildArrayWidgetUsingModelDomain(context, domainModel);
            }
            return _emptyWidgetOrDefaultWidget;
          });
    }

    Widget _buildArrayStreamBuilderWidgetUsingListModelDomain() {
      return StreamBuilder<List<T>>(
          stream: _streamListModelDomain,
          builder: (BuildContext context, AsyncSnapshot<List<T>> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              List<T> domainListModel = asyncSnapshot.data ?? List.empty();

              if(domainListModel.isEmpty) {
                return _emptyWidgetOrDefaultWidget;
              }
              return _baseArrayWidgetUsingListModelDomain.buildArrayWidgetUsingListModelDomain(context, domainListModel);
            }
            return _loadingWidget;
          }
      );
    }

    Widget _buildArrayFutureBuilderWidgetUsingModelDomain() {
      return FutureBuilder<T>(
          future: _futureModelDomain,
          builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              T domainModel = asyncSnapshot.data;
              return _baseArrayWidgetUsingModelDomain.buildArrayWidgetUsingModelDomain(context, domainModel);
            }
            return _emptyWidgetOrDefaultWidget;
          }
      );
    }

    Widget _buildArrayFutureBuilderWidgetUsingListModelDomain() {
      return FutureBuilder<List<T>>(
          future: _futureListModelDomain,
          builder: (BuildContext context, AsyncSnapshot<List<T>> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              List<T> domainListModel = asyncSnapshot.data ?? List.empty();

              if(domainListModel.isEmpty) {
                return _emptyWidgetOrDefaultWidget;
              }
              return _baseArrayWidgetUsingListModelDomain.buildArrayWidgetUsingListModelDomain(context, domainListModel);
            }
            return _loadingWidget;
          }
      );
    }

}