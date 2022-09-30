import 'package:flutter_test/flutter_test.dart';
import '../../../example/libs/model/user/list_user.dart';
import '../../../example/libs/model/user/user.dart';

void main() {
  test("test method deleteListModelToGetListModel Success", () {
    List<User> listOne = [
      User("1","Jacob"),
      User("2","Valeriy"),
      User("3","Djigurda"),
    ];
    List<User> listTwo = [
      User("1","Jacob"),
    ];
    ListUser listUser = ListUser(listOne);
    listUser.deleteListModelToGetListModel(listUser,listTwo);
    expect(listUser.getListModel.length, 2);
    expect(listUser.getListModel[0].uniqueId == "2"
        && listUser.getListModel[0].name == "Valeriy",true);
    expect(listUser.getListModel[1].uniqueId == "3"
        && listUser.getListModel[1].name == "Djigurda",true);
  });
}