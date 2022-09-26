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

    var listUserDomain = ListUser(listOne);
    listUserDomain.deleteListModelToGetListModel(listUserDomain,listTwo);

    expect(listUserDomain.getListModel.length, 2);
    expect(listUserDomain.getListModel[0].uniqueId == "2"
        && listUserDomain.getListModel[0].name == "Valeriy",true);
    expect(listUserDomain.getListModel[1].uniqueId == "3"
        && listUserDomain.getListModel[1].name == "Djigurda",true);
  });
}