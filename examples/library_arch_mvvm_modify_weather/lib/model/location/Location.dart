import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:library_architecture_mvvm_modify/base_model/base_model.dart';

part 'Location.g.dart';

@JsonSerializable(ignoreUnannotated: true)
class Location
    extends BaseModel
{
  @protected
  @JsonKey(name: constParameterId)
  int? id;
  @protected
  @JsonKey(name: constParameterName)
  String? name;
  @protected
  @JsonKey(name:  constParameterLatitude)
  double? latitude;
  @protected
  @JsonKey(name: constParameterLongitude)
  double? longitude;

  Location.success(this.id,this.name,this.latitude,this.longitude) : super.success(id.toString());
  Location.exception(super.exception) : super.exception();
  factory Location.fromMapThisNetwork(Map<String, dynamic> json) => _$LocationFromJson(json);

  static Location get getLocationForSuccess => Location.success(0,"",0.0,0.0);
  static const constParameterId = "id";
  static const constParameterName = "name";
  static const constParameterLatitude = "latitude";
  static const constParameterLongitude = "longitude";

  @nonVirtual
  int? get getParameterId => id;
  @nonVirtual
  String? get getParameterName => name;
}