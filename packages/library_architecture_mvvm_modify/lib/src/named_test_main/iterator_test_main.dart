import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
base class UserBalance extends BaseModel {
  final String username;
  final int money;

  const UserBalance(this.username,this.money) : super(username);

  @override
  UserBalance get getClone => UserBalance(username,money);

  @override
  String toString() {
    return "$username (Money: $money)";
  }
}

@immutable
base class ListUserBalance<T extends UserBalance> extends BaseListModel<T> {
  const ListUserBalance(super.listModel) : super();

  @override
  ListUserBalance<T> get getClone {
    List<T> newListModel = List.empty(growable: true);
    for (T model in listModel) {
      newListModel.add(model.getClone as T);
    }
    return ListUserBalance<T>(newListModel);
  }
}

@immutable
base class UserBalanceWhereOrderByDescParameterMoneyIterator<T extends UserBalance>
    extends BaseModelWhereNamedParameterNamedIterator<T> {
  @override
  T get current {
    T itemCurrentInts = listModelIterator[0].getClone as T;
    if (listModelIterator.length <= 1) {
      listModelIterator.removeAt(0);
      return itemCurrentInts;
    }
    int indexRemove = 0;
    for (int i = 1; i < listModelIterator.length; i++) {
      if (listModelIterator[i].money > itemCurrentInts.money) {
        itemCurrentInts = listModelIterator[i].getClone as T;
        indexRemove = i;
        continue;
      }
    }
    listModelIterator.removeAt(indexRemove);
    return itemCurrentInts;
  }
}

void main() {
  ListUserBalance<UserBalance> listUserBalance = ListUserBalance(List.empty(growable: true));
  listUserBalance.insertFromModelParameterListModel(UserBalance("Jone",3)); // 0
  listUserBalance.insertFromModelParameterListModel(UserBalance("Freddy",1)); // 1
  listUserBalance.insertFromModelParameterListModel(UserBalance("Mitsuya",10)); // 2
  listUserBalance.insertFromModelParameterListModel(UserBalance("Duramichi",5)); // 3
  listUserBalance.insertFromModelParameterListModel(UserBalance("Hook",7)); // 4
  listUserBalance.insertFromModelParameterListModel(UserBalance("Sexy",-1)); // 5
  debugPrint("Before: ${listUserBalance.listModel}"); // 3, 1, 10, 5, 7, -1
  final userBalanceWhereOrderByDescParameterMoneyIterator =
      UserBalanceWhereOrderByDescParameterMoneyIterator<UserBalance>();
  listUserBalance.sortingFromModelWhereNamedParameterNamedIteratorParameterListModel(userBalanceWhereOrderByDescParameterMoneyIterator);
  debugPrint("After: ${listUserBalance.listModel}"); // 10, 7, 5, 3, 1, -1
  listUserBalance.updateFromModelParameterListModel(UserBalance("Duramichi",15));
  listUserBalance.sortingFromModelWhereNamedParameterNamedIteratorParameterListModel(userBalanceWhereOrderByDescParameterMoneyIterator);
  debugPrint(
      "After (Two): ${listUserBalance.listModel}"); // 15, 10, 7, 3, 1, -1
  // EXPECTED OUTPUT:
  //
  // Before: [Jone (Money: 3), Freddy (Money: 1), Mitsuya (Money: 10), Duramichi (Money: 5), Hook (Money: 7), Sexy (Money: -1)]
  // After: [Mitsuya (Money: 10), Hook (Money: 7), Duramichi (Money: 5), Jone (Money: 3), Freddy (Money: 1), Sexy (Money: -1)]
  // After (Two): [Duramichi (Money: 15), Mitsuya (Money: 10), Hook (Money: 7), Jone (Money: 3), Freddy (Money: 1), Sexy (Money: -1)]
  //
  // Process finished with exit code 0
}
