import 'package:json_annotation/json_annotation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

part 'Location.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class Location extends BaseModel {
  static const String constParameterId = "id";
  static const String constParameterName = "name";
  static const String constParameterLatitude = "latitude";
  static const String constParameterLongitude = "longitude";

  @JsonKey(name: constParameterId)
  int? id;
  @JsonKey(name: constParameterName)
  String? name;
  @JsonKey(name: constParameterLatitude)
  double? latitude;
  @JsonKey(name: constParameterLongitude)
  double? longitude;

  Location.success(this.id, this.name, this.latitude, this.longitude)
      : super.success(id.toString());
  Location.exception(super.exception) : super.exception();
  factory Location.fromMapThisNetwork(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static Location get getLocationForSuccess =>
      Location.success(0, "", 0.0, 0.0);

  bool isEqualsNullParametersIdAndNameAndLatitudeAndLongitude() {
    return id == null && name == null && latitude == null && longitude == null;
  }
}
