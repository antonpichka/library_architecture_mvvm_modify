class Post {
  int id;
  String title;
  String body;

  Post(
      this.id,
      this.title,
      this.body);

  static Post get getPost => Post(0,"", "");
}