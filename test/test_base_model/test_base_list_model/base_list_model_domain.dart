import 'package:flutter_test/flutter_test.dart';
import '../../../example/model/user/list_user_domain.dart';
import '../../../example/model/user/user_domain.dart';

void main() {
  test("test method deleteListModelToListModelDomain Success", () {
    List<UserDomain> listOne = [
      UserDomain(uniqueId: "1",name: "Jacob"),
      UserDomain(uniqueId: "2",name: "Valeriy"),
      UserDomain(uniqueId: "3",name: "Djigurda"),
    ];

    List<UserDomain> listTwo = [
      UserDomain(uniqueId: "2",name: "Valeriy"),
    ];

    var listUserDomain = ListUserDomain(listOne);
    listUserDomain.deleteListModelToListModelDomain(listTwo);

    expect(listUserDomain.getListModelDomain.length, 2);
    expect(listUserDomain.getListModelDomain[0].uniqueId == "1"
        && listUserDomain.getListModelDomain[0].name == "Jacob",true);
    expect(listUserDomain.getListModelDomain[1].uniqueId == "3"
        && listUserDomain.getListModelDomain[1].name == "Djigurda",true);
  });
}