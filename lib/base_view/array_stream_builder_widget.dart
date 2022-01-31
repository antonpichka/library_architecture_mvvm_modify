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

  Stream<List<T>> _streamListModelDomain;
  Future<List<T>> _futureListModelDomain;

  Stream<Y> _streamModelDomainVariantTwo;
  Future<Y> _futureModelDomainVariantTwo;

  Stream<List<Y>> _streamListModelDomainVariantTwo;
  Future<List<Y>> _futureListModelDomainVariantTwo;

  ArrayStreamBuilderWidget.arrayWidgetUseStreamModelDomainAndStreamListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._streamModelDomainVariantTwo,
      this._streamListModelDomain,
      this._emptyListWidget,
      this._progressIndicator) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseStreamListModelDomainAndStreamModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._streamListModelDomain,
      this._streamModelDomainVariantTwo,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseFutureModelDomainAndFutureListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._futureModelDomainVariantTwo,
      this._futureListModelDomain,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseFutureListModelDomainAndFutureModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._futureListModelDomain,
      this._futureModelDomainVariantTwo,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseFutureListModelDomainAndStreamModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._futureListModelDomain,
      this._streamModelDomainVariantTwo,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseStreamListModelDomainAndFutureModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndModelDomain,
      this._streamListModelDomain,
      this._futureModelDomainVariantTwo,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_FUTURE_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseFutureListModelDomainAndFutureListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndListModelDomain,
      this._futureListModelDomain,
      this._futureListModelDomainVariantTwo,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_FUTURE_LIST_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseStreamListModelDomainAndStreamListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndListModelDomain,
      this._streamListModelDomain,
      this._streamListModelDomainVariantTwo,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseFutureListModelDomainAndStreamListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndListModelDomain,
      this._futureListModelDomain,
      this._streamListModelDomainVariantTwo,
      this._emptyListWidget,
      this._progressIndicator
      ) :
        _enumSelectedStreamWidget = SelectedArrayStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_MODEL_DOMAIN_AND_STREAM_LIST_MODEL_DOMAIN;

  ArrayStreamBuilderWidget.arrayWidgetUseStreamListModelDomainAndFutureListModelDomain(
      this._baseArrayWidgetUsingListModelDomainAndListModelDomain,
      this._streamListModelDomain,
      this._futureListModelDomainVariantTwo,
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
        stream: _streamModelDomainVariantTwo,
        builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
        {
          return StreamBuilder<List<T>>(
                 stream: _streamListModelDomain,
                 builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
          {
            if(listModelAsyncSnapshot.hasData) {
              print("List hasData");
              List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

              if(domainListModel.isEmpty) {
                print("List isEmpty");
                return _emptyListWidget;
              }
              if(modelAsyncSnapshot.hasData) {
                print("Model hasData");
                Y modelDomain = modelAsyncSnapshot.data;
                return _baseArrayWidgetUsingListModelDomainAndModelDomain.buildArrayWidgetUsingListModelDomainAndModelDomain(
                    context,
                    domainListModel,
                    modelDomain
                );
              }
            }
            print("Indicator");
            return _progressIndicator;
          });
        });
  }

  Widget _buildArrayWidgetUseStreamListModelDomainAndStreamModelDomain() {
    return StreamBuilder<List<T>>(
        stream: _streamListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return StreamBuilder<Y>(
              stream: _streamModelDomainVariantTwo,
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
        future: _futureModelDomainVariantTwo,
        builder: (BuildContext context, AsyncSnapshot<Y> modelAsyncSnapshot)
        {
          return FutureBuilder<List<T>>(
              future: _futureListModelDomain,
              builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
              {
                if(listModelAsyncSnapshot.hasData) {
                  print("List hasData");
                  List<T> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

                  if(domainListModel.isEmpty) {
                    print("List isEmpty");
                    return _emptyListWidget;
                  }
                  if(modelAsyncSnapshot.hasData) {
                    print("Model hasData");
                    Y modelDomain = modelAsyncSnapshot.data;
                    return _baseArrayWidgetUsingListModelDomainAndModelDomain.buildArrayWidgetUsingListModelDomainAndModelDomain(
                        context,
                        domainListModel,
                        modelDomain
                    );
                  }
                }
                print("Indicator");
                return _progressIndicator;
              });
        });
  }
  
  Widget _buildArrayWidgetUseFutureListModelDomainAndFutureModelDomain() {
    return FutureBuilder<List<T>>(
        future: _futureListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return FutureBuilder<Y>(
              future: _futureModelDomainVariantTwo,
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
        future: _futureListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return StreamBuilder<Y>(
              stream: _streamModelDomainVariantTwo,
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
        stream: _streamListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshot)
        {
          return FutureBuilder<Y>(
              future: _futureModelDomainVariantTwo,
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
        future: _futureListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return FutureBuilder<List<Y>>(
              future: _futureListModelDomainVariantTwo,
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
        stream: _streamListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return StreamBuilder<List<Y>>(
              stream: _streamListModelDomainVariantTwo,
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
        future: _futureListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return StreamBuilder<List<Y>>(
              stream: _streamListModelDomainVariantTwo,
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
        stream: _streamListModelDomain,
        builder: (BuildContext context, AsyncSnapshot<List<T>> listModelAsyncSnapshotT)
        {
          return FutureBuilder<List<Y>>(
              future: _futureListModelDomainVariantTwo,
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
