import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_list_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model_local_database.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

abstract class BaseModelLocalDatabaseDataSourceLibSqfliteLib {
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

  BaseModelLocalDatabaseDataSourceLibSqfliteLib(
      {this.fileDatabase,
        this.version,
        this.onConfigure,
        this.onOpen,
        this.onCreate,
        this.onUpgrade,
        this.onDowngrade}
      );

  @protected
  BaseModelLocalDatabase fromMap(Map<String, dynamic> map);

  @protected
  Future<Database> get getDatabase async {
    if (_mapFilenameAndDatabase.containsKey(fileDatabase)) {
      return _mapFilenameAndDatabase[fileDatabase];
    }
    _mapFilenameAndDatabase[fileDatabase] = await _initDB();
    return _mapFilenameAndDatabase[fileDatabase];
  }

  @protected
  Future<Response<int,LocalException>> baseInsertModelToLocalDatabaseThereIsParameterDataSource(
      BaseModelLocalDatabase model,
      String table,
      [ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace]) async
  {
    try {
      if(model == null) {
        return throw Exception("ModelLocalDatabase null");
      }
      final db = await getDatabase;
      var result = await db.insert(
          table,
          model.toMap(),
          conflictAlgorithm: conflictAlgorithm
      );
      return Response.success(result);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseInsertModelsToLocalDatabaseThereIsParameterDataSource(
      BaseListModelLocalDatabase listModel,
      String table,
      [ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace]) async
  {
    try {
      if(listModel == null) {
        return throw Exception("ListModel null");
      }
      if(listModel.getListModelLocalDatabase.isEmpty) {
        return throw Exception("List empty");
      }
      final db = await getDatabase;
      int result = 0;
      for (BaseModelLocalDatabase model in listModel.getListModelLocalDatabase) {
        if(model == null) {
          continue;
        }
        var resultInsert = await db.insert(
            table,
            model.toMap(),
            conflictAlgorithm: conflictAlgorithm
        );
        if(resultInsert > 0) {
          result++;
        }
      }
      return Response.success(result);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseUpdateModelToLocalDatabaseThereIsParameterDataSource(
      BaseModelLocalDatabase model,
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']
      ) async
  {
    try {
      if(model == null) {
        return throw Exception("ModelLocalDatabase null");
      }
      final db = await getDatabase;
      var result = await db.update(
        table,
        model.toMap(),
        where: columnForWhere + columnForWhereOperationMark,
        whereArgs: [baseTypeParameter.getParameter],
      );
      return Response.success(result);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseUpdateModelsToLocalDatabaseThereIsParameterDataSource(
      BaseListModelLocalDatabase listModel,
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']
      ) async
  {
    try {
      if(listModel == null) {
        return throw Exception("ListModel null");
      }
      if(listModel.getListModelLocalDatabase.isEmpty) {
        return throw Exception("List empty");
      }
      final db = await getDatabase;
      int result = 0;
      for (BaseModelLocalDatabase model in listModel.getListModelLocalDatabase) {
        if(model == null) {
          continue;
        }
        var resultUpdate = await db.update(
          table,
          model.toMap(),
          where: columnForWhere + columnForWhereOperationMark,
          whereArgs: [baseTypeParameter.getParameter],
        );
        if(resultUpdate > 0) {
          result++;
        }
      }
      return Response.success(result);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseDeleteModelToLocalDatabaseThereIsParameterDataSource(
      BaseModelLocalDatabase model,
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']
      ) async
  {
    try {
      if(model == null) {
        return throw Exception("ModelLocalDatabase null");
      }
      final db = await getDatabase;
      var result = await db.delete(
        table,
        where: columnForWhere + columnForWhereOperationMark,
        whereArgs: [baseTypeParameter.getParameter],
      );
      return Response.success(result);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseDeleteModelsToLocalDatabaseThereIsParameterDataSource(
      BaseListModelLocalDatabase listModel,
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']
      ) async
  {
    try {
      if(listModel == null) {
        return throw Exception("ListModel null");
      }
      if(listModel.getListModelLocalDatabase.isEmpty) {
        return throw Exception("List empty");
      }
      final db = await getDatabase;
      int result = 0;
      for (BaseModelLocalDatabase model in listModel.getListModelLocalDatabase) {
        if(model == null) {
          continue;
        }
        var resultDelete = await db.delete(
          table,
          where: columnForWhere + columnForWhereOperationMark,
          whereArgs: [baseTypeParameter.getParameter],
        );
        if(resultDelete > 0) {
          result++;
        }
      }
      return Response.success(result);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<BaseModelLocalDatabase,LocalException>> baseGetModelFromLocalDatabaseThereIsParameterDataSource(
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      [String columnForWhereOperationMark = '= ?']
      ) async {
    try {
      final db = await getDatabase;

      final Map<String, dynamic> map = (await db.query(
          table,
          where: columnForWhere + columnForWhereOperationMark,
          whereArgs: [baseTypeParameter.getParameter]
      )) as Map<String, dynamic>;

      var model = fromMap(map);

      return Response.success(model);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<BaseListModelLocalDatabase,LocalException>> baseGetListModelFromLocalDatabaseDataSource(
      String table
      ) async {
    try {
      final db = await getDatabase;

      final List<Map<String, dynamic>> maps = await db.query(table);

      var list = List.generate(maps.length, (i) {
        fromMap(maps[i]);
      });

      var localListModel = BaseListModelLocalDatabase();
      localListModel.setListModelLocalDatabase = list;
      return Response.success(localListModel);
    } catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<BaseListModelLocalDatabase,LocalException>> baseGetListModelFromLocalDatabaseThereIsParameterDataSource(
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

      var list = List.generate(maps.length, (i) {
        fromMap(maps[i]);
      });

      var localListModel = BaseListModelLocalDatabase();
      localListModel.setListModelLocalDatabase = list;
      return Response.success(localListModel);
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
