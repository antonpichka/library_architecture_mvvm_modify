abstract class LocalModel {
  String localUniqueId = "";

  Map<String, dynamic> toMap();

  set setLocalUniqueId(String uniqueId)  {
    localUniqueId = uniqueId;
  }
}