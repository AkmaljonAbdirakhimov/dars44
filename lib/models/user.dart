import 'package:dars44/models/address.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int id;
  String email;
  String firstName;
  String lastName;
  int age;
  Address address;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.address,
  });

  factory User.fromJson(Map<String, dynamic> mapData) {
    return _$UserFromJson(mapData);
  }

  Map<String, dynamic> toJson() {
    return _$UserToJson(this);
  }
}
