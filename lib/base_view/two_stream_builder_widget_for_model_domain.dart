// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_widget_using/base_widget_using_list_model_domain_and_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_widget_using/base_widget_using_list_model_domain_and_model_domain.dart';

enum SelectedTwoStreamBuilderWidgetForModelDomain {
  WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN,
  WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN,

  WIDGET_USE_FUTURE_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN,
  WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN,

  WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN,
  WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN,

  WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN,
  WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN,

  WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN,
  WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN,

  WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET,
  WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN_NOT_OTHER_WIDGET,

  WIDGET_USE_FUTURE_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET,
  WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN_NOT_OTHER_WIDGET,

  WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN_NOT_OTHER_WIDGET,
  WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN_NOT_OTHER_WIDGET,

  WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET,
  WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET,

  WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET,
  WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET,
}

//ignore: must_be_immutable
class TwoStreamBuilderWidgetForModelDomain<T extends BaseModelDomain, Y extends BaseModelDomain>
    extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  Widget _emptyListWidget;
  Widget _loadingWidget;
  SelectedTwoStreamBuilderWidgetForModelDomain _enumSelectedStreamWidget;

  BaseWidgetUsingListModelDomainAndModelDomain<T,Y> _baseWidgetUsingListModelDomainAndModelDomain;
  BaseWidgetUsingListModelDomainAndListModelDomain<T,Y> _baseWidgetUsingListModelDomainAndListModelDomain;

  Stream<List<T>> _streamListModelDomainT;
  Future<List<T>> _futureListModelDomainT;

  Stream<Y> _streamModelDomainY;
  Future<Y> _futureModelDomainY;

  Stream<List<Y>> _streamListModelDomainY;
  Future<List<Y>> _futureListModelDomainY;

  TwoStreamBuilderWidgetForModelDomain.widgetUseStreamModelDomainAndStreamListModelDomain(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._streamModelDomainY,
      this._streamListModelDomainT,
      this._emptyListWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseStreamListModelDomainAndStreamModelDomain(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._streamListModelDomainT,
      this._streamModelDomainY,
      this._emptyListWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseFutureModelDomainAndFutureListModelDomain(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._futureModelDomainY,
      this._futureListModelDomainT,
      this._emptyListWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_FUTURE_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseFutureListModelDomainAndFutureModelDomain(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._futureListModelDomainT,
      this._futureModelDomainY,
      this._emptyListWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseFutureListModelDomainAndStreamModelDomain(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._futureListModelDomainT,
      this._streamModelDomainY,
      this._emptyListWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseStreamListModelDomainAndFutureModelDomain(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._streamListModelDomainT,
      this._futureModelDomainY,
      this._emptyListWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseFutureListModelDomainAndFutureListModelDomain(
      this._baseWidgetUsingListModelDomainAndListModelDomain,
      this._futureListModelDomainT,
      this._futureListModelDomainY,
      this._emptyListWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseStreamListModelDomainAndStreamListModelDomain(
      this._baseWidgetUsingListModelDomainAndListModelDomain,
      this._streamListModelDomainT,
      this._streamListModelDomainY,
      this._emptyListWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseFutureListModelDomainAndStreamListModelDomain(
      this._baseWidgetUsingListModelDomainAndListModelDomain,
      this._futureListModelDomainT,
      this._streamListModelDomainY,
      this._emptyListWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseStreamListModelDomainAndFutureListModelDomain(
      this._baseWidgetUsingListModelDomainAndListModelDomain,
      this._streamListModelDomainT,
      this._futureListModelDomainY,
      this._emptyListWidget,
      this._loadingWidget,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseStreamModelDomainAndStreamListModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._streamModelDomainY,
      this._streamListModelDomainT,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseStreamListModelDomainAndStreamModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._streamListModelDomainT,
      this._streamModelDomainY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseFutureModelDomainAndFutureListModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._futureModelDomainY,
      this._futureListModelDomainT,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_FUTURE_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseFutureListModelDomainAndFutureModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._futureListModelDomainT,
      this._futureModelDomainY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseFutureListModelDomainAndStreamModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._futureListModelDomainT,
      this._streamModelDomainY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseStreamListModelDomainAndFutureModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomainAndModelDomain,
      this._streamListModelDomainT,
      this._futureModelDomainY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseFutureListModelDomainAndFutureListModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomainAndListModelDomain,
      this._futureListModelDomainT,
      this._futureListModelDomainY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseStreamListModelDomainAndStreamListModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomainAndListModelDomain,
      this._streamListModelDomainT,
      this._streamListModelDomainY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseFutureListModelDomainAndStreamListModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomainAndListModelDomain,
      this._futureListModelDomainT,
      this._streamListModelDomainY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  TwoStreamBuilderWidgetForModelDomain.widgetUseStreamListModelDomainAndFutureListModelDomainNotOtherWidget(
      this._baseWidgetUsingListModelDomainAndListModelDomain,
      this._streamListModelDomainT,
      this._futureListModelDomainY,
      {Key key}) : super(key: key)
  {
    _enumSelectedStreamWidget = SelectedTwoStreamBuilderWidgetForModelDomain
        .WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET;
  }

  @override
  Widget build(BuildContext context) {
    switch(_enumSelectedStreamWidget) {
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN:
        return _buildWidgetUseStreamModelDomainAndStreamListModelDomain();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN:
        return _buildWidgetUseStreamListModelDomainAndStreamModelDomain();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN:
        return _buildWidgetUseFutureModelDomainAndFutureListModelDomain();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN:
        return _buildWidgetUseFutureListModelDomainAndFutureModelDomain();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN:
        return _buildWidgetUseFutureListModelDomainAndStreamModelDomain();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN:
        return _buildWidgetUseStreamListModelDomainAndFutureModelDomain();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN:
        return _buildWidgetUseFutureListModelDomainAndFutureListModelDomain();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN:
        return _buildWidgetUseStreamListModelDomainAndStreamListModelDomain();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN:
        return _buildWidgetUseFutureListModelDomainAndStreamListModelDomain();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN:
        return _buildWidgetUseStreamListModelDomainAndFutureListModelDomain();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET:
        return _buildWidgetUseStreamModelDomainAndStreamListModelDomainNotOtherWidget();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN_NOT_OTHER_WIDGET:
        return _buildWidgetUseStreamListModelDomainAndStreamModelDomainNotOtherWidget();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET:
        return _buildWidgetUseFutureModelDomainAndFutureListModelDomainNotOtherWidget();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN_NOT_OTHER_WIDGET:
        return _buildWidgetUseFutureListModelDomainAndFutureModelDomainNotOtherWidget();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN_NOT_OTHER_WIDGET:
        return _buildWidgetUseFutureListModelDomainAndStreamModelDomainNotOtherWidget();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN_NOT_OTHER_WIDGET:
        return _buildWidgetUseStreamListModelDomainAndFutureModelDomainNotOtherWidget();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET:
        return _buildWidgetUseFutureListModelDomainAndFutureListModelDomainNotOtherWidget();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET:
        return _buildWidgetUseStreamListModelDomainAndStreamListModelDomainNotOtherWidget();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET:
        return _buildWidgetUseFutureListModelDomainAndStreamListModelDomainNotOtherWidget();
      case SelectedTwoStreamBuilderWidgetForModelDomain.WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN_NOT_OTHER_WIDGET:
        return _buildWidgetUseStreamListModelDomainAndFutureListModelDomainNotOtherWidget();
      default:
        return _buildWidgetUseStreamModelDomainAndStreamListModelDomain();
    }
  }

  Widget _buildWidgetUseStreamModelDomainAndStreamListModelDomain() {
    return StreamBuilder<Y>(
        stream: _streamModelDomainY,
        builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
        {
          return StreamBuilder<List<T>>(
                 stream: _streamListModelDomainT,
                 builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
          {
            if(listModelAsyncSnapshot.hasData) {
              List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

              if(domainListModel.isEmpty) {
                return _emptyListWidget;
              }
              if(modelAsyncSnapshot.hasData) {
                Y modelDomain = modelAsyncSnapshot.data;
                return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                    context,
                    domainListModel,
                    modelDomain
                );
              }
            }
            return _loadingWidget;
          });
        });
  }

  Widget _buildWidgetUseStreamListModelDomainAndStreamModelDomain() {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return StreamBuilder<Y>(
              stream: _streamModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
              {
                if(listModelAsyncSnapshot.hasData) {
                  List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

                  if(domainListModel.isEmpty) {
                    return _emptyListWidget;
                  }
                  if(modelAsyncSnapshot.hasData) {
                    Y modelDomain = modelAsyncSnapshot.data;
                    return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                return _loadingWidget;
              });
        });
  }

  Widget _buildWidgetUseFutureModelDomainAndFutureListModelDomain() {
    return FutureBuilder<Y>(
        future: _futureModelDomainY,
        builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
        {
          return FutureBuilder<List<T>>(
              future: _futureListModelDomainT,
              builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
              {
                if(listModelAsyncSnapshot.hasData) {
                  List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

                  if(domainListModel.isEmpty) {
                    return _emptyListWidget;
                  }
                  if(modelAsyncSnapshot.hasData) {
                    Y modelDomain = modelAsyncSnapshot.data;
                    return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                return _loadingWidget;
              });
        });
  }
  
  Widget _buildWidgetUseFutureListModelDomainAndFutureModelDomain() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return FutureBuilder<Y>(
              future: _futureModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
              {
                if(listModelAsyncSnapshot.hasData) {
                  List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

                  if(domainListModel.isEmpty) {
                    return _emptyListWidget;
                  }
                  if(modelAsyncSnapshot.hasData) {
                    Y modelDomain = modelAsyncSnapshot.data;
                    return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                return _loadingWidget;
              });
        });
  }
  
  Widget _buildWidgetUseFutureListModelDomainAndStreamModelDomain() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return StreamBuilder<Y>(
              stream: _streamModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
              {
                if(listModelAsyncSnapshot.hasData) {
                  List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

                  if(domainListModel.isEmpty) {
                    return _emptyListWidget;
                  }
                  if(modelAsyncSnapshot.hasData) {
                    Y modelDomain = modelAsyncSnapshot.data;
                    return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                return _loadingWidget;
              });
        });
  }

  Widget _buildWidgetUseStreamListModelDomainAndFutureModelDomain() {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return FutureBuilder<Y>(
              future: _futureModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
              {
                if(listModelAsyncSnapshot.hasData) {
                  List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

                  if(domainListModel.isEmpty) {
                    return _emptyListWidget;
                  }
                  if(modelAsyncSnapshot.hasData) {
                    Y modelDomain = modelAsyncSnapshot.data;
                    return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                return _loadingWidget;
              });
        });
  }

  Widget _buildWidgetUseFutureListModelDomainAndFutureListModelDomain() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return FutureBuilder<List<Y>>(
              future: _futureListModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<List<Y>> listModelAsyncSnapshotY)
              {
                if(listModelAsyncSnapshotT.hasData && listModelAsyncSnapshotY.hasData) {
                  List<T> domainListModelT = listModelAsyncSnapshotT.data ?? List.empty();
                  List<Y> domainListModelY = listModelAsyncSnapshotY.data ?? List.empty();

                  if(domainListModelT.isEmpty || domainListModelY.isEmpty) {
                    return _emptyListWidget;
                  }
                  return _baseWidgetUsingListModelDomainAndListModelDomain.buildWidgetUsingListModelDomainAndListModelDomain(
                      context,
                      domainListModelT,
                      domainListModelY
                    );
                }
                return _loadingWidget;
              });
        });
  }

  Widget _buildWidgetUseStreamListModelDomainAndStreamListModelDomain() {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return StreamBuilder<List<Y>>(
              stream: _streamListModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<List<Y>> listModelAsyncSnapshotY)
              {
                if(listModelAsyncSnapshotT.hasData && listModelAsyncSnapshotY.hasData) {
                  List<T> domainListModelT = listModelAsyncSnapshotT.data ?? List.empty();
                  List<Y> domainListModelY = listModelAsyncSnapshotY.data ?? List.empty();

                  if(domainListModelT.isEmpty || domainListModelY.isEmpty) {
                    return _emptyListWidget;
                  }
                  return _baseWidgetUsingListModelDomainAndListModelDomain.buildWidgetUsingListModelDomainAndListModelDomain(
                      context,
                      domainListModelT,
                      domainListModelY
                  );
                }
                return _loadingWidget;
              });
        });
  }

  Widget _buildWidgetUseFutureListModelDomainAndStreamListModelDomain() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return StreamBuilder<List<Y>>(
              stream: _streamListModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<List<Y>> listModelAsyncSnapshotY)
              {
                if(listModelAsyncSnapshotT.hasData && listModelAsyncSnapshotY.hasData) {
                  List<T> domainListModelT = listModelAsyncSnapshotT.data ?? List.empty();
                  List<Y> domainListModelY = listModelAsyncSnapshotY.data ?? List.empty();

                  if(domainListModelT.isEmpty || domainListModelY.isEmpty) {
                    return _emptyListWidget;
                  }
                  return _baseWidgetUsingListModelDomainAndListModelDomain.buildWidgetUsingListModelDomainAndListModelDomain(
                      context,
                      domainListModelT,
                      domainListModelY
                  );
                }
                return _loadingWidget;
              });
        });
  }

  Widget _buildWidgetUseStreamListModelDomainAndFutureListModelDomain() {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return FutureBuilder<List<Y>>(
              future: _futureListModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<List<Y>> listModelAsyncSnapshotY)
              {
                if(listModelAsyncSnapshotT.hasData && listModelAsyncSnapshotY.hasData) {
                  List<T> domainListModelT = listModelAsyncSnapshotT.data ?? List.empty();
                  List<Y> domainListModelY = listModelAsyncSnapshotY.data ?? List.empty();

                  if(domainListModelT.isEmpty || domainListModelY.isEmpty) {
                    return _emptyListWidget;
                  }
                  return _baseWidgetUsingListModelDomainAndListModelDomain.buildWidgetUsingListModelDomainAndListModelDomain(
                      context,
                      domainListModelT,
                      domainListModelY
                  );
                }
                return _loadingWidget;
              });
        });
  }

  Widget _buildWidgetUseStreamModelDomainAndStreamListModelDomainNotOtherWidget() {
    return StreamBuilder<Y>(
        stream: _streamModelDomainY,
        builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
        {
          return StreamBuilder<List<T>>(
              stream: _streamListModelDomainT,
              builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
              {
                  List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();
                  Y modelDomain = modelAsyncSnapshot.data;
                  return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                      context,
                      domainListModel,
                      modelDomain
                  );
              });
        });
  }

  Widget _buildWidgetUseStreamListModelDomainAndStreamModelDomainNotOtherWidget() {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return StreamBuilder<Y>(
              stream: _streamModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
              {
                List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();
                Y modelDomain = modelAsyncSnapshot.data;
                return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                    context,
                    domainListModel,
                    modelDomain
                );
              });
        });
  }

  Widget _buildWidgetUseFutureModelDomainAndFutureListModelDomainNotOtherWidget() {
    return FutureBuilder<Y>(
        future: _futureModelDomainY,
        builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
        {
          return FutureBuilder<List<T>>(
              future: _futureListModelDomainT,
              builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
              {
                  List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();
                  Y modelDomain = modelAsyncSnapshot.data;
                  return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                      context,
                      domainListModel,
                      modelDomain
                  );
              });
        });
  }

  Widget _buildWidgetUseFutureListModelDomainAndFutureModelDomainNotOtherWidget() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return FutureBuilder<Y>(
              future: _futureModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
              {
                List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();
                Y modelDomain = modelAsyncSnapshot.data;
                return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                    context,
                    domainListModel,
                    modelDomain
                );
              });
        });
  }

  Widget _buildWidgetUseFutureListModelDomainAndStreamModelDomainNotOtherWidget() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return StreamBuilder<Y>(
              stream: _streamModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
              {
                List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();
                Y modelDomain = modelAsyncSnapshot.data;
                return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                    context,
                    domainListModel,
                    modelDomain
                );
              });
        });
  }

  Widget _buildWidgetUseStreamListModelDomainAndFutureModelDomainNotOtherWidget() {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return FutureBuilder<Y>(
              future: _futureModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
              {
                List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();
                Y modelDomain = modelAsyncSnapshot.data;
                return _baseWidgetUsingListModelDomainAndModelDomain.buildWidgetUsingListModelDomainAndModelDomain(
                    context,
                    domainListModel,
                    modelDomain
                );
              });
        });
  }

  Widget _buildWidgetUseFutureListModelDomainAndFutureListModelDomainNotOtherWidget() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return FutureBuilder<List<Y>>(
              future: _futureListModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<List<Y>> listModelAsyncSnapshotY)
              {
                List<T> domainListModelT = listModelAsyncSnapshotT.data ?? List.empty();
                List<Y> domainListModelY = listModelAsyncSnapshotY.data ?? List.empty();
                return _baseWidgetUsingListModelDomainAndListModelDomain.buildWidgetUsingListModelDomainAndListModelDomain(
                    context,
                    domainListModelT,
                    domainListModelY
                );
              });
        });
  }

  Widget _buildWidgetUseStreamListModelDomainAndStreamListModelDomainNotOtherWidget() {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return StreamBuilder<List<Y>>(
              stream: _streamListModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<List<Y>> listModelAsyncSnapshotY)
              {
                List<T> domainListModelT = listModelAsyncSnapshotT.data ?? List.empty();
                List<Y> domainListModelY = listModelAsyncSnapshotY.data ?? List.empty();
                return _baseWidgetUsingListModelDomainAndListModelDomain.buildWidgetUsingListModelDomainAndListModelDomain(
                    context,
                    domainListModelT,
                    domainListModelY
                );
              });
        });
  }

  Widget _buildWidgetUseFutureListModelDomainAndStreamListModelDomainNotOtherWidget() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return StreamBuilder<List<Y>>(
              stream: _streamListModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<List<Y>> listModelAsyncSnapshotY)
              {
                List<T> domainListModelT = listModelAsyncSnapshotT.data ?? List.empty();
                List<Y> domainListModelY = listModelAsyncSnapshotY.data ?? List.empty();

                return _baseWidgetUsingListModelDomainAndListModelDomain.buildWidgetUsingListModelDomainAndListModelDomain(
                    context,
                    domainListModelT,
                    domainListModelY
                );
              });
        });
  }

  Widget _buildWidgetUseStreamListModelDomainAndFutureListModelDomainNotOtherWidget() {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomainT,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return FutureBuilder<List<Y>>(
              future: _futureListModelDomainY,
              builder: (BuildContext context, AsyncSnapshot<List<Y>> listModelAsyncSnapshotY)
              {
                List<T> domainListModelT = listModelAsyncSnapshotT.data ?? List.empty();
                List<Y> domainListModelY = listModelAsyncSnapshotY.data ?? List.empty();
                return _baseWidgetUsingListModelDomainAndListModelDomain.buildWidgetUsingListModelDomainAndListModelDomain(
                    context,
                    domainListModelT,
                    domainListModelY
                );
              });
        });
  }

}
