abstract class BaseLocalModel {
  String localUniqueId = "";

  Map<String, dynamic> toMap();

  set setLocalUniqueId(String uniqueId)  {
    localUniqueId = uniqueId;
  }
}