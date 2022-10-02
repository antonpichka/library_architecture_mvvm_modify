/*
 * Designed and developed by 2022 JacobOdd (Anton Pichka)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

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