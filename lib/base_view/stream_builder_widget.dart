// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_widget/base_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_single_widget/base_single_widget.dart';
import 'package:library_architecture_mvvm_modify/custom_widget/empty_list_widget.dart';


enum SelectedStreamBuilderWidget {
  SINGLE_WIDGET_USE_STREAM_DOMAIN_MODEL,
  SINGLE_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL,
  ARRAY_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL,
  ARRAY_WIDGET_USE_STREAM_DOMAIN_MODEL,
  ARRAY_WIDGET_USE_STREAM_DOMAIN_MODEL_AND_STREAM_LIST_DOMAIN_MODEL,
  ARRAY_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL_AND_STREAM_DOMAIN_MODEL,
  ARRAY_WIDGET_USE_FUTURE_LIST_DOMAIN_MODEL_AND_STREAM_DOMAIN_MODEL,
}

//ignore: must_be_immutable
class StreamBuilderWidget extends StatelessWidget
{
  // all constructor (function_view_model)
  final SelectedStreamBuilderWidget _enumSelectedStreamWidget;

  BaseSingleWidget _baseSingleWidget;
  BaseArrayWidget _baseArrayWidget;
  Stream<List<DomainModel>> _streamListDomainModel;
  Future<List<DomainModel>> _futureListDomainModel;
  Stream<DomainModel> _streamDomainModel;

  // all constructor (not function_view_model)
  ProgressIndicator _progressIndicator = const CircularProgressIndicator();
  StatelessWidget _emptyListWidget = const EmptyListWidget("Empty Text");

  StreamBuilderWidget.singleWidgetUseStreamDomainModel(
      this._baseSingleWidget,
      this._streamDomainModel
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_DOMAIN_MODEL;

  StreamBuilderWidget.singleWidgetUseStreamListDomainModel(
      this._baseSingleWidget,
      this._streamListDomainModel
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL;

  StreamBuilderWidget.arrayWidgetUseStreamDomainModel(
      this._baseArrayWidget,
      this._streamDomainModel,
      [this._emptyListWidget,
        this._progressIndicator]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_DOMAIN_MODEL;


  StreamBuilderWidget.arrayWidgetUseStreamListDomainModel(
      this._baseArrayWidget,
      this._streamListDomainModel,
      [this._emptyListWidget,
        this._progressIndicator]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL;



  StreamBuilderWidget.arrayWidgetUseStreamDomainModelAndStreamListDomainModel(
      this._baseArrayWidget,
      this._streamDomainModel,
      this._streamListDomainModel,
      [this._emptyListWidget,
        this._progressIndicator]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_DOMAIN_MODEL_AND_STREAM_LIST_DOMAIN_MODEL;


  StreamBuilderWidget.arrayWidgetUseStreamListDomainModelAndStreamDomainModel(
      this._baseArrayWidget,
      this._streamListDomainModel,
      this._streamDomainModel,
      [this._emptyListWidget,
        this._progressIndicator]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL_AND_STREAM_DOMAIN_MODEL;

  StreamBuilderWidget.arrayWidgetUseFutureListDomainModelAndStreamDomainModel(
      this._baseArrayWidget,
      this._futureListDomainModel,
      this._streamDomainModel,
      [this._emptyListWidget,
        this._progressIndicator]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_DOMAIN_MODEL_AND_STREAM_DOMAIN_MODEL;


  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    switch(_enumSelectedStreamWidget) {
      case SelectedStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_DOMAIN_MODEL:
        return _buildSingleWidgetUseStreamBuilderDomainModel(themeData);
      case SelectedStreamBuilderWidget.SINGLE_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL:
        return _buildSingleWidgetUseStreamBuilderListDomainModel(themeData);  
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_DOMAIN_MODEL:
        return _buildArrayWidgetUseStreamBuilderDomainModel(themeData);
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL:
        return _buildArrayWidgetUseStreamBuilderListDomainModel(themeData);
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_DOMAIN_MODEL_AND_STREAM_LIST_DOMAIN_MODEL:
         return _buildArrayWidgetUseStreamBuilderDomainModelAndStreamBuilderListDomainModel(themeData);
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL_AND_STREAM_DOMAIN_MODEL:
        return _buildArrayWidgetUseStreamBuilderListDomainModelAndStreamBuilderDomainModel(themeData);
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_DOMAIN_MODEL_AND_STREAM_DOMAIN_MODEL:
        return _buildArrayWidgetUseFutureBuilderListDomainModelAndStreamBuilderDomainModel(themeData);
      default: return _buildArrayWidgetUseStreamBuilderListDomainModel(themeData);
    }
  }

  Widget _buildSingleWidgetUseStreamBuilderDomainModel(ThemeData themeData) {
    return StreamBuilder<DomainModel>(
        stream: _streamDomainModel,
        builder: (BuildContext context, AsyncSnapshot<DomainModel> asyncSnapshot)
        {
          if(asyncSnapshot.hasData) {
            DomainModel domainModel = asyncSnapshot.data ?? DomainModel();

            return _baseSingleWidget.buildSingleWidgetUsingTheModel(context, domainModel);
          }
          return Container();
        }
    );
  }

  Widget _buildSingleWidgetUseStreamBuilderListDomainModel(ThemeData themeData) {
    return StreamBuilder<List<DomainModel>>(
        stream: _streamListDomainModel,
        builder: (BuildContext context, AsyncSnapshot<List<DomainModel>> asyncSnapshot)
        {
          if(asyncSnapshot.hasData) {
            List<DomainModel> domainListModel = asyncSnapshot.data ?? List.empty();

            return _baseSingleWidget.buildSingleWidgetUsingAList(
                context,
                domainListModel
            );
          }
          return Container();
        }
    );
  }


  Widget _buildArrayWidgetUseStreamBuilderDomainModel(ThemeData themeData) {
    return StreamBuilder<DomainModel>(
        stream: _streamDomainModel,
        builder: (BuildContext context, AsyncSnapshot<DomainModel> asyncSnapshot)
        {
          if(asyncSnapshot.hasData) {
            DomainModel domainModel = asyncSnapshot.data ?? DomainModel();

            return _baseArrayWidget.buildArrayWidgetAndBelongsBaseItemWidget(
                  context,
                  domainModel);
          }

          return _progressIndicator;
        }
    );
  }

  Widget _buildArrayWidgetUseStreamBuilderListDomainModel(ThemeData themeData) {
    return StreamBuilder<List<DomainModel>>(
      stream: _streamListDomainModel,
      builder: (BuildContext context, AsyncSnapshot<List<DomainModel>> asyncSnapshot)
      {
        if(asyncSnapshot.hasData) {
          List<DomainModel> domainListModel = asyncSnapshot.data ?? List.empty();

          if(domainListModel.isEmpty) {
            return _emptyListWidget;
          }

          if(domainListModel.isNotEmpty) {
            return _baseArrayWidget.buildArrayWidgetAndBelongsBaseItemWidgetOrBaseItemAndArrayWidget(
                context,
                domainListModel
            );
          }
        }

        return _progressIndicator;
      }
    );
  }


  Widget _buildArrayWidgetUseStreamBuilderDomainModelAndStreamBuilderListDomainModel(ThemeData themeData) {
    return StreamBuilder<DomainModel>(
        stream: _streamDomainModel,
        builder: (BuildContext context, AsyncSnapshot<DomainModel> modelAsyncSnapshot)
        {
          return StreamBuilder<List<DomainModel>>(
                 stream: _streamListDomainModel,
                 builder: (BuildContext context, AsyncSnapshot<List<DomainModel>> listModelAsyncSnapshot)
          {
            if(listModelAsyncSnapshot.hasData) {
              List<DomainModel> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

              if(domainListModel.isEmpty) {
                return _emptyListWidget;
              }

              if(domainListModel.isNotEmpty) {
                DomainModel domainModel = DomainModel();
               
                if(modelAsyncSnapshot.hasData) {
                  domainModel = modelAsyncSnapshot.data;
                }
                
                return _baseArrayWidget.buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
                    context,
                    domainListModel,
                    domainModel
                );
              }
            }

            return _progressIndicator;
          });
        });
  }


  Widget _buildArrayWidgetUseStreamBuilderListDomainModelAndStreamBuilderDomainModel(ThemeData themeData) {
    return StreamBuilder<List<DomainModel>>(
        stream: _streamListDomainModel,
        builder: (BuildContext context, AsyncSnapshot<List<DomainModel>> listModelAsyncSnapshot)
        {
          return StreamBuilder<DomainModel>(
              stream: _streamDomainModel,
              builder: (BuildContext context, AsyncSnapshot<DomainModel> modelAsyncSnapshot)
              {
                if(listModelAsyncSnapshot.hasData) {
                  List<DomainModel> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

                  if(domainListModel.isEmpty) {
                    return _emptyListWidget;
                  }

                  if(domainListModel.isNotEmpty) {
                    DomainModel domainModel = DomainModel();

                    if(modelAsyncSnapshot.hasData) {
                      domainModel = modelAsyncSnapshot.data;
                    }
                    
                    return _baseArrayWidget.buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
                        context,
                        domainListModel,
                        domainModel
                    );
                  }
                }

                return _progressIndicator;
              });
        });
  }


  Widget _buildArrayWidgetUseFutureBuilderListDomainModelAndStreamBuilderDomainModel(ThemeData themeData) {
    return FutureBuilder<List<DomainModel>>(
        future: _futureListDomainModel,
        builder: (BuildContext context, AsyncSnapshot<List<DomainModel>> listModelAsyncSnapshot)
        {
          return StreamBuilder<DomainModel>(
              stream: _streamDomainModel,
              builder: (BuildContext context, AsyncSnapshot<DomainModel> modelAsyncSnapshot)
              {
                if(listModelAsyncSnapshot.hasData) {
                  List<DomainModel> domainListModel = listModelAsyncSnapshot.data ?? List.empty();

                  if(domainListModel.isEmpty) {
                    return _emptyListWidget;
                  }

                  if(domainListModel.isNotEmpty) {
                    DomainModel domainModel = DomainModel();

                    if(modelAsyncSnapshot.hasData) {
                      domainModel = modelAsyncSnapshot.data;
                    }
                    return _baseArrayWidget.buildArrayWidgetAndBelongsBaseItemTwoModelWidgetOrBaseItemAndArrayWidget(
                        context,
                        domainListModel,
                        domainModel
                    );
                  }
                }

                return _progressIndicator;
              });
        });
  }

}
