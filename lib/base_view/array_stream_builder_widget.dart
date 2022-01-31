// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget_using_list_model_domain_and_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget_using_list_model_domain_and_model_domain.dart';

enum SelectedArrayStreamBuilderWidget {
  ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN,

  ARRAY_WIDGET_USE_FUTURE_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN,

  ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN,

  ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN,

  ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN,
  ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN,
}

//ignore: must_be_immutable
class ArrayStreamBuilderWidget<T extends BaseModelDomain, Y extends BaseModelDomain>
    extends StatelessWidget
{
  // all constructor (interface_function_view_model)
  final SelectedArrayStreamBuilderWidget _enumSelectedStreamWidget;
  final Widget _emptyListWidget;
  final ProgressIndicator _progressIndicator;

  BaseArrayWidgetUsingListModelDomainAndModelDomain<T,Y> _baseArrayWidgetUsingListModelDomainAndModelDomain;
  BaseArrayWidgetUsingListModelDomainAndListModelDomain<T,Y> _baseArrayWidgetUsingListModelDomainAndListModelDomain;

  Stream<List<T>> _streamListModelDomainT;
  Future<List<T>> _futureListModelDomainT;

  Stream<Y> _streamModelDomainY;
  Future<Y> _futureModelDomainY;

  Stream<List<Y>> _streamListModelDomainY;
  Future<List<Y>> _futureListModelDomainY;

  ArrayStreamBuilderWidget.arrayWidgetUseStreamModelDomainAndStreamListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._streamModelDomainY,
      this._streamListModelDomainT,
      this._emptyListWidget,
      this._progressIndicator) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseStreamListModelDomainAndStreamModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._streamListModelDomainT,
      this._streamModelDomainY,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseFutureModelDomainAndFutureListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._futureModelDomainY,
      this._futureListModelDomainT,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseFutureListModelDomainAndFutureModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._futureListModelDomainT,
      this._futureModelDomainY,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseFutureListModelDomainAndStreamModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._futureListModelDomainT,
      this._streamModelDomainY,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseStreamListModelDomainAndFutureModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._streamListModelDomainT,
      this._futureModelDomainY,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseFutureListModelDomainAndFutureListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndListModelDomain,
      this._futureListModelDomainT,
      this._futureListModelDomainY,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseStreamListModelDomainAndStreamListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndListModelDomain,
      this._streamListModelDomainT,
      this._streamListModelDomainY,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseFutureListModelDomainAndStreamListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndListModelDomain,
      this._futureListModelDomainT,
      this._streamListModelDomainY,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseStreamListModelDomainAndFutureListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndListModelDomain,
      this._streamListModelDomainT,
      this._futureListModelDomainY,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN;

  @override
  Widget build(BuildContext context) {
    switch(_enumSelectedStreamWidget) {
      case SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN:
        return _buildArrayWidgetUseStreamModelDomainAndStreamListModelDomain();
      case SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN:
        return _buildArrayWidgetUseStreamListModelDomainAndStreamModelDomain();
      case SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN:
        return _buildArrayWidgetUseFutureModelDomainAndFutureListModelDomain();
      case SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN:
        return _buildArrayWidgetUseFutureListModelDomainAndFutureModelDomain();
      case SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN:
        return _buildArrayWidgetUseFutureListModelDomainAndStreamModelDomain();
      case SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN:
        return _buildArrayWidgetUseStreamListModelDomainAndFutureModelDomain();
      case SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN:
        return _buildArrayWidgetUseFutureListModelDomainAndFutureListModelDomain();
      case SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN:
        return _buildArrayWidgetUseStreamListModelDomainAndStreamListModelDomain();
      case SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN:
        return _buildArrayWidgetUseFutureListModelDomainAndStreamListModelDomain();
      case SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN:
        return _buildArrayWidgetUseStreamListModelDomainAndFutureListModelDomain();
      default:
        return _buildArrayWidgetUseStreamModelDomainAndStreamListModelDomain();
    }
  }

  Widget _buildArrayWidgetUseStreamModelDomainAndStreamListModelDomain() {
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
                return _baseArrayWidgetUsingListModelDomainAndModelDomain.buildArrayWidgetUsingListModelDomainAndModelDomain(
                    context,
                    domainListModel,
                    modelDomain
                );
              }
            }
            return _progressIndicator;
          });
        });
  }

  Widget _buildArrayWidgetUseStreamListModelDomainAndStreamModelDomain() {
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
                    return _baseArrayWidgetUsingListModelDomainAndModelDomain.buildArrayWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                return _progressIndicator;
              });
        });
  }

  Widget _buildArrayWidgetUseFutureModelDomainAndFutureListModelDomain() {
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
                    return _baseArrayWidgetUsingListModelDomainAndModelDomain.buildArrayWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                return _progressIndicator;
              });
        });
  }
  
  Widget _buildArrayWidgetUseFutureListModelDomainAndFutureModelDomain() {
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
                    return _baseArrayWidgetUsingListModelDomainAndModelDomain.buildArrayWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                return _progressIndicator;
              });
        });
  }
  
  Widget _buildArrayWidgetUseFutureListModelDomainAndStreamModelDomain() {
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
                    return _baseArrayWidgetUsingListModelDomainAndModelDomain.buildArrayWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                return _progressIndicator;
              });
        });
  }

  Widget _buildArrayWidgetUseStreamListModelDomainAndFutureModelDomain() {
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
                    return _baseArrayWidgetUsingListModelDomainAndModelDomain.buildArrayWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                return _progressIndicator;
              });
        });
  }

  Widget _buildArrayWidgetUseFutureListModelDomainAndFutureListModelDomain() {
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
                  return _baseArrayWidgetUsingListModelDomainAndListModelDomain.buildArrayWidgetUsingListModelDomainAndListModelDomain(
                      context,
                      domainListModelT,
                      domainListModelY
                    );
                }
                return _progressIndicator;
              });
        });
  }

  Widget _buildArrayWidgetUseStreamListModelDomainAndStreamListModelDomain() {
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
                  return _baseArrayWidgetUsingListModelDomainAndListModelDomain.buildArrayWidgetUsingListModelDomainAndListModelDomain(
                      context,
                      domainListModelT,
                      domainListModelY
                  );
                }
                return _progressIndicator;
              });
        });
  }

  Widget _buildArrayWidgetUseFutureListModelDomainAndStreamListModelDomain() {
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
                  return _baseArrayWidgetUsingListModelDomainAndListModelDomain.buildArrayWidgetUsingListModelDomainAndListModelDomain(
                      context,
                      domainListModelT,
                      domainListModelY
                  );
                }
                return _progressIndicator;
              });
        });
  }

  Widget _buildArrayWidgetUseStreamListModelDomainAndFutureListModelDomain() {
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
                  return _baseArrayWidgetUsingListModelDomainAndListModelDomain.buildArrayWidgetUsingListModelDomainAndListModelDomain(
                      context,
                      domainListModelT,
                      domainListModelY
                  );
                }
                return _progressIndicator;
              });
        });
  }

}
