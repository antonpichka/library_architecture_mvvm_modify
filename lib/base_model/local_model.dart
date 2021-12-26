abstract class LocalModel {
  String localUniqueId = "";

  LocalModel fromMap(Map<String, dynamic> map);

  Map<String, dynamic> toMap();

  set setLocalUniqueId(String uniqueId)  {
    localUniqueId = uniqueId;
  }
}