// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:library_architecture_mvvm_modify/base_model/domain_model.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_array_and_item_widget/base_array_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_widget/base_widget.dart';
import 'package:library_architecture_mvvm_modify/base_view/base_widget/empty_list_widget.dart';


enum SelectedStreamBuilderWidget {
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

  BaseArrayWidget _baseArrayWidget;
  Stream<List<DomainModel>> _streamListDomainModel;
  Future<List<DomainModel>> _futureListDomainModel;
  Stream<DomainModel> _streamDomainModel;

  // all constructor (not function_view_model)
  double _horizontalPadding = 0.0;
  double _verticalPadding = 0.0;
  ProgressIndicator _progressIndicator = const CircularProgressIndicator();
  BaseWidget _emptyListWidget = EmptyListWidget("Empty Text");



  StreamBuilderWidget.arrayWidgetUseStreamDomainModel(
      this._baseArrayWidget,
      this._streamDomainModel,
      [this._horizontalPadding,
        this._verticalPadding,
        this._progressIndicator,
        this._emptyListWidget]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_DOMAIN_MODEL;


  StreamBuilderWidget.arrayWidgetUseStreamListDomainModel(
      this._baseArrayWidget,
      this._streamListDomainModel,
      [this._horizontalPadding,
      this._verticalPadding,
      this._progressIndicator,
      this._emptyListWidget]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL;



  StreamBuilderWidget.arrayWidgetUseStreamDomainModelAndStreamListDomainModel(
      this._baseArrayWidget,
      this._streamDomainModel,
      this._streamListDomainModel,
      [this._horizontalPadding,
        this._verticalPadding,
        this._progressIndicator,
        this._emptyListWidget]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_DOMAIN_MODEL_AND_STREAM_LIST_DOMAIN_MODEL;


  StreamBuilderWidget.arrayWidgetUseStreamListDomainModelAndStreamDomainModel(
      this._baseArrayWidget,
      this._streamListDomainModel,
      this._streamDomainModel,
      [this._horizontalPadding,
        this._verticalPadding,
        this._progressIndicator,
        this._emptyListWidget]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL_AND_STREAM_DOMAIN_MODEL;

  StreamBuilderWidget.arrayWidgetUseFutureListDomainModelAndStreamDomainModel(
      this._baseArrayWidget,
      this._futureListDomainModel,
      this._streamDomainModel,
      [this._horizontalPadding,
        this._verticalPadding,
        this._progressIndicator,
        this._emptyListWidget]
      ) :
        _enumSelectedStreamWidget = SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_DOMAIN_MODEL_AND_STREAM_DOMAIN_MODEL;


  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    switch(_enumSelectedStreamWidget) {
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_DOMAIN_MODEL:
        return Container(
            padding: EdgeInsets.symmetric(
                horizontal: _horizontalPadding,
                vertical: _verticalPadding),
            child: _buildArrayWidgetUseStreamBuilderDomainModel(themeData)
        );
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL:
        return Container(
            padding: EdgeInsets.symmetric(
                horizontal: _horizontalPadding,
                vertical: _verticalPadding),
            child: _buildArrayWidgetUseStreamBuilderListDomainModel(themeData)
        );
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_DOMAIN_MODEL_AND_STREAM_LIST_DOMAIN_MODEL:
         return Container(
            padding: EdgeInsets.symmetric(
                horizontal: _horizontalPadding,
                vertical: _verticalPadding),
            child: _buildArrayWidgetUseStreamBuilderDomainModelAndStreamBuilderListDomainModel(themeData)
         );
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_STREAM_LIST_DOMAIN_MODEL_AND_STREAM_DOMAIN_MODEL:
        return Container(
            padding: EdgeInsets.symmetric(
                horizontal: _horizontalPadding,
                vertical: _verticalPadding),
            child: _buildArrayWidgetUseStreamBuilderListDomainModelAndStreamBuilderDomainModel(themeData)
        );
      case SelectedStreamBuilderWidget.ARRAY_WIDGET_USE_FUTURE_LIST_DOMAIN_MODEL_AND_STREAM_DOMAIN_MODEL:
        return Container(
            padding: EdgeInsets.symmetric(
                horizontal: _horizontalPadding,
                vertical: _verticalPadding),
            child: _buildArrayWidgetUseFutureBuilderListDomainModelAndStreamBuilderDomainModel(themeData)
        );
      default: return Container(
          padding: EdgeInsets.symmetric(
              horizontal: _horizontalPadding,
              vertical: _verticalPadding),
          child: _buildArrayWidgetUseStreamBuilderListDomainModel(themeData)
      );
    }
  }

  Widget _buildArrayWidgetUseStreamBuilderDomainModel(ThemeData themeData) {
    return StreamBuilder<DomainModel>(
        stream: _streamDomainModel,
        builder: (BuildContext context, AsyncSnapshot<DomainModel> asyncSnapshot)
        {
          if(asyncSnapshot.hasData) {
            DomainModel domainModel = asyncSnapshot.data ?? List.empty();

            return _baseArrayWidget.buildBaseStreamArrayAndBelongsBaseItemWidget(
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
            return _baseArrayWidget.buildBaseStreamArrayAndBelongsBaseItemOrBelongsBaseItemAndArrayModelWidget(
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
                DomainModel domainModel = modelAsyncSnapshot.data;
                return _baseArrayWidget.buildBaseStreamArrayAndBelongsBaseItemTwoModelOrBelongsBaseItemAndArrayModelWidget(
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
                    DomainModel domainModel = modelAsyncSnapshot.data;
                    return _baseArrayWidget.buildBaseStreamArrayAndBelongsBaseItemTwoModelOrBelongsBaseItemAndArrayModelWidget(
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
                    DomainModel domainModel = modelAsyncSnapshot.data;
                    return _baseArrayWidget.buildBaseStreamArrayAndBelongsBaseItemTwoModelOrBelongsBaseItemAndArrayModelWidget(
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
