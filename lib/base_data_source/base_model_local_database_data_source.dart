import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:library_architecture_mvvm_modify/base_exception/local_exception.dart';
import 'package:library_architecture_mvvm_modify/base_list_model/base_local_list_model.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_local_model.dart';
import 'package:library_architecture_mvvm_modify/base_type_parameter/base_type_parameter.dart';
import 'package:library_architecture_mvvm_modify/response.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

abstract class BaseModelLocalDatabaseDataSource {
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

  BaseModelLocalDatabaseDataSource(
      {this.fileDatabase,
        this.version,
        this.onConfigure,
        this.onOpen,
        this.onCreate,
        this.onUpgrade,
        this.onDowngrade}
      );

  @protected
  BaseLocalModel fromMap(Map<String, dynamic> map);

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
      BaseLocalModel localModel,
      String table,
      [ConflictAlgorithm conflictAlgorithm = ConflictAlgorithm.replace]) async
  {
    try {
      final db = await getDatabase;
      var result = await db.insert(
          table,
          localModel.toMap(),
          conflictAlgorithm: conflictAlgorithm
      );
      return Response.success(result);
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseUpdateModelToLocalDatabaseThereIsParameterDataSource(
      BaseLocalModel localModel,
      String table,
      String columnForWhere,
      ) async
  {
    try {
      final db = await getDatabase;
      var result = await db.update(
        table,
        localModel.toMap(),
        where: columnForWhere + '= ?',
        whereArgs: [localModel.localUniqueId],
      );
      return Response.success(result);
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<int,LocalException>> baseDeleteModelToLocalDatabaseThereIsParameterDataSource(
      BaseLocalModel localModel,
      String table,
      String columnForWhere,
      ) async
  {
    try {
      final db = await getDatabase;
      var result = await db.update(
        table,
        localModel.toMap(),
        where: columnForWhere + '= ?',
        whereArgs: [localModel.localUniqueId],
      );
      return Response.success(result);
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<BaseLocalModel,LocalException>> baseGetModelFromLocalDatabaseThereIsParameterDataSource(
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere,
      ) async {
    try {
      final db = await getDatabase;

      final Map<String, dynamic> map = (await db.query(
          table,
          where: columnForWhere + '= ?',
          whereArgs: [baseTypeParameter.getParameter]
      )) as Map<String, dynamic>;

      var model = fromMap(map);

      return Response.success(model);
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<BaseLocalListModel,LocalException>> baseGetListModelFromLocalDatabaseDataSource(
      String table
      ) async {
    try {
      final db = await getDatabase;

      final List<Map<String, dynamic>> maps = await db.query(table);

      var list = List.generate(maps.length, (i) {
        fromMap(maps[i]);
      });

      var localListModel = BaseLocalListModel();
      localListModel.setLocalList = list;
      return Response.success(localListModel);
    } on Exception catch (e) {
      return Response.exception(LocalException(e.runtimeType.toString(),e.toString()));
    }
  }

  @protected
  Future<Response<BaseLocalListModel,LocalException>> baseGetListModelFromLocalDatabaseThereIsParameterDataSource(
      BaseTypeParameter baseTypeParameter,
      String table,
      String columnForWhere) async {
    try {
      final db = await getDatabase;

      final List<Map<String, dynamic>> maps = await db.query(table,
          where: columnForWhere + '= ?',
          whereArgs: [baseTypeParameter.getParameter]
      );

      var list = List.generate(maps.length, (i) {
        fromMap(maps[i]);
      });

      var localListModel = BaseLocalListModel();
      localListModel.setLocalList = list;
      return Response.success(localListModel);
    } on Exception catch (e) {
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
