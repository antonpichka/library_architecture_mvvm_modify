class User {
  String id;
  String email;
  String name;
  String photo;

  User(this.id,this.email,this.name,this.photo);

  static User get getUser => User("","","","");

  bool isEmptyParameterId() {
    return id.isEmpty;
  }

  bool isNotEmptyParameterId() {
    return id.isNotEmpty;
  }
}