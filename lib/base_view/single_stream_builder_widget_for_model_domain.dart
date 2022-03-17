// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_widget_using/base_widget_using_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_widget_using/base_widget_using_model_domain.dart';

enum SelectedSingleStreamBuilderWidgetForModelDomain {
  WIDGET_USE_STREAM_MODEL_DOMAIN,
  WIDGET_USE_STREAM_LIST_MODEL_DOMAIN,
  WIDGET_USE_FUTURE_MODEL_DOMAIN,
  WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN,

  WIDGET_USE_STREAM_MODEL_DOMAIN_NOT_OTHER_WIDGET,
  WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET,
  WIDGET_USE_FUTURE_MODEL_DOMAIN_NOT_OTHER_WIDGET,
  WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET,
}

// ignore: must_be_immutable
class SingleStreamBuilderWidgetForModelDomain<T extends BaseModelDomain> extends StatelessWidget
{
  Widget _emptyWidgetOrDefaultWidget;
  Widget _loadingWidget;
  SelectedSingleStreamBuilderWidgetForModelDomain _enumSelectedStreamBuilderWidget;
  
  BaseWidgetUsingModelDomain<T> _baseWidgetUsingModelDomain;
  BaseWidgetUsingListModelDomain<T> _baseWidgetUsingListModelDomain;

  Stream<T> _streamModelDomain;
  Future<T> _futureModelDomain;
  Stream<List<T>> _streamListModelDomain;
  Future<List<T>> _futureListModelDomain;

  SingleStreamBuilderWidgetForModelDomain.widgetUseStreamModelDomain(
      this._baseWidgetUsingModelDomain,
      this._streamModelDomain,
      this._emptyWidgetOrDefaultWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidgetForModelDomain.widgetUseStreamListModelDomain(
      this._baseWidgetUsingListModelDomain,
      this._streamListModelDomain,
      this._emptyWidgetOrDefaultWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidgetForModelDomain.widgetUseFutureModelDomain(
      this._baseWidgetUsingModelDomain,
      this._futureModelDomain,
      this._emptyWidgetOrDefaultWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidgetForModelDomain.widgetUseFutureListModelDomain(
      this._baseWidgetUsingListModelDomain,
      this._futureListModelDomain,
      this._emptyWidgetOrDefaultWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN;
  }

  SingleStreamBuilderWidgetForModelDomain.widgetUseStreamModelDomainNotOtherWidget(
      this._baseWidgetUsingModelDomain,
      this._streamModelDomain,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  SingleStreamBuilderWidgetForModelDomain.widgetUseStreamListModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomain,
      this._streamListModelDomain,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  SingleStreamBuilderWidgetForModelDomain.widgetUseFutureModelDomainNotOtherWidget(
      this._baseWidgetUsingModelDomain,
      this._futureModelDomain,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  SingleStreamBuilderWidgetForModelDomain.widgetUseFutureListModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomain,
      this._futureListModelDomain,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamBuilderWidget = SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  @override
    Widget build(BuildContext context) {
      switch(_enumSelectedStreamBuilderWidget) {
        case SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_MODEL_DOMAIN:
          return _buildStreamBuilderWidgetUsingModelDomain();
        case SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN:
          return _buildStreamBuilderWidgetUsingListModelDomain();
        case SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_MODEL_DOMAIN:
          return _buildFutureBuilderWidgetUsingModelDomain();
        case SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN:
          return _buildFutureBuilderWidgetUsingListModelDomain();
        case SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_MODEL_DOMAIN_NOT_OTHER_WIDGET:
          return _buildStreamBuilderWidgetUsingModelDomainNotOtherWidget();
        case SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET:
          return _buildStreamBuilderWidgetUsingListModelDomainNotOtherWidget();
        case SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_MODEL_DOMAIN_NOT_OTHER_WIDGET:
          return _buildFutureBuilderWidgetUsingModelDomainNotOtherWidget();
        case SelectedSingleStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET:
          return _buildFutureBuilderWidgetUsingListModelDomainNotOtherWidget();
        default:
          return _buildStreamBuilderWidgetUsingModelDomain();
      }
    }

    Widget _buildStreamBuilderWidgetUsingModelDomain() {
      return StreamBuilder<T>(
          stream: _streamModelDomain,
          builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              T domainModel = asyncSnapshot.data;
              return _baseWidgetUsingModelDomain.buildWidgetUsingModelDomain(context, domainModel);
            }
            return _emptyWidgetOrDefaultWidget;
          });
    }

    Widget _buildStreamBuilderWidgetUsingListModelDomain() {
      return StreamBuilder<List<T>>(
          stream: _streamListModelDomain,
          builder: (BuildContext context, AsyncSnapshot<List<T>> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              List<T> domainListModel = asyncSnapshot.data ?? List.empty();

              if(domainListModel.isEmpty) {
                return _emptyWidgetOrDefaultWidget;
              }
              return _baseWidgetUsingListModelDomain.buildWidgetUsingListModelDomain(context, domainListModel);
            }
            return _loadingWidget;
          }
      );
    }

    Widget _buildFutureBuilderWidgetUsingModelDomain() {
      return FutureBuilder<T>(
          future: _futureModelDomain,
          builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
          {
            if(asyncSnapshot.hasData) {
              T domainModel = asyncSnapshot.data;
              return _baseWidgetUsingModelDomain.buildWidgetUsingModelDomain(context, domainModel);
            }
            return _emptyWidgetOrDefaultWidget;
          });
  }

  Widget _buildFutureBuilderWidgetUsingListModelDomain() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> asyncSnapshot)
        {
          if(asyncSnapshot.hasData) {
            List<T> domainListModel = asyncSnapshot.data ?? List.empty();
            if(domainListModel.isEmpty) {
              return _emptyWidgetOrDefaultWidget;
            }
            return _baseWidgetUsingListModelDomain.buildWidgetUsingListModelDomain(context, domainListModel);
          }
          return _loadingWidget;
        });
  }
  
  Widget _buildStreamBuilderWidgetUsingModelDomainNotOtherWidget() {
    return StreamBuilder<T>(
        stream: _streamModelDomain,
        builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
        {
          T domainModel = asyncSnapshot.data;
          return _baseWidgetUsingModelDomain.buildWidgetUsingModelDomain(context, domainModel);
        });
  }

  Widget _buildStreamBuilderWidgetUsingListModelDomainNotOtherWidget() {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> asyncSnapshot)
        {
          List<T> domainListModel = asyncSnapshot.data ?? List.empty();
          return _baseWidgetUsingListModelDomain.buildWidgetUsingListModelDomain(context, domainListModel);
        });
  }

  Widget _buildFutureBuilderWidgetUsingModelDomainNotOtherWidget() {
    return FutureBuilder<T>(
        future: _futureModelDomain,
        builder: (BuildContext context, AsyncSnapshot<T> asyncSnapshot)
        {
          T domainModel = asyncSnapshot.data;
          return _baseWidgetUsingModelDomain.buildWidgetUsingModelDomain(context, domainModel);
        });
  }

  Widget _buildFutureBuilderWidgetUsingListModelDomainNotOtherWidget() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> asyncSnapshot)
        {
          List<T> domainListModel = asyncSnapshot.data ?? List.empty();
          return _baseWidgetUsingListModelDomain.buildWidgetUsingListModelDomain(context, domainListModel);
        });
  }

}