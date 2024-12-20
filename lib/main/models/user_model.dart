import 'package:template/features/authentication/models/user.dart';

class UserModel {
  String? id;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? password;
  String? profile_image;
  String? token;
  int? type;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.password,
    this.profile_image,
    this.type,
  });

  // Convert a Customer object to a Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'password': password,
      'profile_image': profile_image,
      'type': type,
    };
  }

  Map<String, dynamic> toMapLogin() {
    return {
      'email': email,
      'password': password,
    };
  }



  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'address': address,
      'password': password,
      'profile_image': profile_image,
      'type': type,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      address: map['address'],
      password: map['password'],
      profile_image: map['profile_image'],
      type: map['type'],
    );
  }
}