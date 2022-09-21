import '../model_named_background_model/user_sqflite_database_background_model/user_sqflite_database_background_model_using_delete_np_for_all.dart';

class MainBackground {
  static final MainBackground firebaseMessagingBackground = MainBackground._();

  final UserSqfliteDatabaseBackgroundModelUsingDeleteNPForAll _userSqfliteDatabaseBackgroundModelUsingDeleteForAll = UserSqfliteDatabaseBackgroundModelUsingDeleteNPForAll();

  MainBackground._();

  Future<void> selectAndRunTask(String nameTask) async {
    switch(nameTask) {
      case "deleteUserToSqfliteDatabaseThereIsParameterForAll":
        await _deleteUserToSqfliteDatabaseThereIsParameterAndAlsoOneTasks();
        break;
      case "two":
        break;
    }
  }

  Future<void> _deleteUserToSqfliteDatabaseThereIsParameterAndAlsoOneTasks()
  async {
    // 1
    var result = await _userSqfliteDatabaseBackgroundModelUsingDeleteForAll
        .deleteUserToSqfliteDatabaseNP();
    if(result.isExceptionResponse) {
      return _deleteUserToSqfliteDatabaseThereIsParameterAndAlsoOneTasks();
    }
    return;
  }
}