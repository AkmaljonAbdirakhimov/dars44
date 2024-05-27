import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String city;
  String street;

  Address({
    required this.city,
    required this.street,
  });

  factory Address.fromJson(Map<String, dynamic> mapData) {
    return _$AddressFromJson(mapData);
  }

  Map<String, dynamic> toJson() {
    return _$AddressToJson(this);
  }
}
