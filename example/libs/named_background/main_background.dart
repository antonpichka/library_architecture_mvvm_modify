import '../model_named_background_model/user_sqflite_database_background_model/user_sqflite_database_background_model_using_delete_for_all.dart';

class MainBackground {
  static final MainBackground firebaseMessagingBackground = MainBackground._();

  final UserSqfliteDatabaseBackgroundModelUsingDeleteForAll _userSqfliteDatabaseBackgroundModelUsingDeleteForAll = UserSqfliteDatabaseBackgroundModelUsingDeleteForAll();

  MainBackground._();

  Future<void> selectAndRunTask(String nameTask) async {
    switch(nameTask) {
      case "deleteUserToSqfliteDatabaseThereIsParameterForAll":
        await _deleteUserToSqfliteDatabaseThereIsParameterForAll();
        break;
      case "two":
        break;
    }
  }

  Future<void> _deleteUserToSqfliteDatabaseThereIsParameterForAll() async {
    var result = await _userSqfliteDatabaseBackgroundModelUsingDeleteForAll.deleteModelToNamedDatabaseThereIsParameter();
    if(result.isExceptionResponse) {
      return _deleteUserToSqfliteDatabaseThereIsParameterForAll();
    }
    return;
  }
}