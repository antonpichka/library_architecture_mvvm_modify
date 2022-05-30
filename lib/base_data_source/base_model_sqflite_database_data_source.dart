import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_domain.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_list_model/base_list_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_named_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/constants.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

abstract class BaseModelSqfliteDatabaseDataSource<
      T extends BaseModelNamedDatabase,
      Y extends BaseListModelNamedDatabase<BaseListModelDomain,T>>
{
  @protected
  final String fileDatabase;
  @protected
  final int version;
  @protected
  final Function(Database) onConfigure;
  @protected
  final Function(Database) onOpen;
  @protected
  final Function(Database,int) onCreate;
  @protected
  final Function(Database,int,int) onUpgrade;
  @protected
  final Function(Database,int,int) onDowngrade;

  static final Map<String, Database> _mapFilenameAndDatabase = {};

  BaseModelSqfliteDatabaseDataSource(
      {this.fileDatabase,
        this.version,
        this.onConfigure,
        this.onOpen,
        this.onCreate,
        this.onUpgrade,
        this.onDowngrade}
      );
  
  @protected
  T fromMapToBaseModelSqfliteDatabase(Map<String, dynamic> map);

  @protected
  Y fromListMapToBaseListModelSqfliteDatabase(List<Map<String, dynamic>> map);

  @protected
  Future<Database> get getDatabase async {
    if (_mapFilenameAndDatabase.containsKey(fileDatabase)) {
      return _mapFilenameAndDatabase[fileDatabase];
    }
    _mapFilenameAndDatabase[fileDatabase] = await _initDB();
    return _mapFilenameAndDatabase[fileDatabase];
  }

  @protected
  Future<Response<int,LocalException>> baseInsertModelToSqfliteDatabaseThereIsParameterDataSource(
      T model,
      String table,
      [ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace]) async
  {
    try {
      final db = await getDatabase;
      var resultInsert = await db.insert(
          table,
          model.toMap(),
          conflictAlgorithm: conflictAlgorithm
      );
      var result = 0;
      if(resultInsert > 0) {
        result++;
      }
      return Response.success(result);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseInsertListModelToSqfliteDatabaseThereIsParameterDataSource(
      Y listModel,
      String table,
      [ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace]) async
  {
    try {
      if(listModel.getListModelNamedDatabase.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"List empty for insert"));
      }
      final db = await getDatabase;
      int result = 0;
      for (BaseModelNamedDatabase model in listModel.getListModelNamedDatabase) {
        var resultInsert = await db.insert(
            table,
            model.toMap(),
            conflictAlgorithm: conflictAlgorithm
        );
        if(resultInsert > 0) {
          result++;
        }
      }
      if(result > 0) {
        return Response.success(result);
      } else {
        return Response.exception(LocalException(constDeveloper,"Zero element insert"));
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseUpdateModelOrUpdateModelsToSqfliteDatabaseThereIsParameterDataSource(
      T model,
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']
      ) async
  {
    try {
      final db = await getDatabase;

      var resultUpdate = await db.update(
        table,
        model.toMap(),
        where: columnForWhere + columnForWhereOperationMark,
        whereArgs: [baseTypeParameter.getParameter],
      );
      if(resultUpdate > 0) {
        return Response.success(resultUpdate);
      } else {
        return Response.exception(LocalException(constDeveloper,"Zero element update"));
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseUpdateListModelToSqfliteDatabaseThereIsParameterDataSource(
      Y listModel,
      String table,
      String columnForUniqueId,
      ) async
  {
    try {
      if(listModel.getListModelNamedDatabase.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"List empty for update"));
      }
      final db = await getDatabase;
      int result = 0;
      for (BaseModelNamedDatabase model in listModel.getListModelNamedDatabase) {
        var resultUpdate = await db.update(
          table,
          model.toMap(),
          where: columnForUniqueId + '= ?',
          whereArgs: [model.uniqueId],
        );
        if(resultUpdate > 0) {
          result = result + resultUpdate;
        }
      }
      if(result > 0) {
        return Response.success(result);
      } else {
        return Response.exception(LocalException(constDeveloper,"Zero element update"));
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseDeleteModelOrDeleteModelsToSqfliteDatabaseThereIsParameterDataSource(
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']
      ) async
  {
    try {
      final db = await getDatabase;
      int resultDelete = await db.delete(
        table,
        where: columnForWhere + columnForWhereOperationMark,
        whereArgs: [baseTypeParameter.getParameter],
      );
      if(resultDelete > 0) {
        return Response.success(resultDelete);
      } else {
        return Response.exception(LocalException(constDeveloper,"Zero element delete"));
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseDeleteListModelToSqfliteDatabaseThereIsParameterDataSource(
      Y listModel,
      String table,
      String columnForUniqueId,
      ) async
  {
    try {
      if(listModel.getListModelNamedDatabase.isEmpty) {
        return Response.exception(LocalException(constDeveloper,"List empty for delete"));
      }
      final db = await getDatabase;
      int result = 0;
      for (BaseModelNamedDatabase model in listModel.getListModelNamedDatabase) {
        var resultDelete = await db.delete(
          table,
          where: columnForUniqueId + '= ?',
          whereArgs: [model.uniqueId],
        );
        if(resultDelete > 0) {
          result = result + resultDelete ;
        }
      }
      if(result > 0) {
        return Response.success(result);
      } else {
        return Response.exception(LocalException(constDeveloper,"Zero element delete"));
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<T,LocalException>> baseGetModelFromSqfliteDatabaseThereIsParameterDataSource(
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']
      ) async {
    try {
      final db = await getDatabase;

      final List<Map<String, dynamic>> maps = await db.query(
          table,
          where: columnForWhere + columnForWhereOperationMark,
          whereArgs: [baseTypeParameter.getParameter]
      );
      if(maps.isNotEmpty) {
        return Response.success(fromMapToBaseModelSqfliteDatabase(maps[0]));
      } else {
        return Response.exception(LocalException(constDeveloper,"Zero element get"));
      }
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<Y,LocalException>> baseGetListModelFromSqfliteDatabaseDataSource(
      String table
      ) async {
    try {
      final db = await getDatabase;

      final List<Map<String, dynamic>> maps = await db.query(table);

      var localListModel = fromListMapToBaseListModelSqfliteDatabase(maps);
      return Response.success(localListModel);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<Y,LocalException>> baseGetListModelFromSqfliteDatabaseThereIsParameterDataSource(
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']) async
  {
    try {
      final db = await getDatabase;

      final List<Map<String, dynamic>> maps = await db.query(
          table,
          where: columnForWhere + columnForWhereOperationMark,
          whereArgs: [baseTypeParameter.getParameter]
      );

      var localListModel = fromListMapToBaseListModelSqfliteDatabase(maps);
      return Response.success(localListModel);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @visibleForTesting
  Future<Response<int,LocalException>> baseClearAllModelToLocalDatabaseDataSource(String table) async {
    try {
      final db = await getDatabase;
      int result = await db.delete(table);
      return Response.success(result);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  _initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, fileDatabase);
    return await openDatabase(path, version: version,
        onConfigure: (Database db) async {
          onConfigure(db);
        },
        onOpen: (Database db) async {
          onOpen(db);
        },
        onCreate: (Database db, int version) async {
          onCreate(db,version);
        },
        onUpgrade: (Database db, int oldVersion, int newVersion)  async{
          onUpgrade(db,oldVersion,newVersion);
        },
        onDowngrade: (Database db, int oldVersion, int newVersion) async {
          onDowngrade(db,oldVersion,newVersion);
        }
    );
  }

}
