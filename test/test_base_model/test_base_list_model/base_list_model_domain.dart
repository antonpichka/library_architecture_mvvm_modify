import 'package:flutter_test/flutter_test.dart';
import '../../../example/libs/model/user/list_user_domain.dart';
import '../../../example/libs/model/user/user_domain.dart';

void main() {
  test("test method deleteListModelToListModelDomain Success", () {
    List<UserDomain> listOne = [
      UserDomain("1","Jacob"),
      UserDomain("2","Valeriy"),
      UserDomain("3","Djigurda"),
    ];

    List<UserDomain> listTwo = [
      UserDomain("1","Jacob"),
    ];

    var listUserDomain = ListUserDomain(listOne);
    listUserDomain.deleteListModelToGetListModel(listUserDomain,listTwo);

    expect(listUserDomain.getListModelDomain.length, 2);
    expect(listUserDomain.getListModelDomain[0].uniqueId == "2"
        && listUserDomain.getListModelDomain[0].name == "Valeriy",true);
    expect(listUserDomain.getListModelDomain[1].uniqueId == "3"
        && listUserDomain.getListModelDomain[1].name == "Djigurda",true);
  });
}