import 'dart:convert';

class LoginRequest {
  String password;
  int platform;
  String userName;

  LoginRequest({
    required this.password,
    required this.platform,
    required this.userName,
  });

  factory LoginRequest.fromRawJson(String str) => LoginRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LoginRequest.fromJson(Map<String, dynamic> json) => LoginRequest(
        password: json["password"],
        platform: json["platform"],
        userName: json["user_name"],
      );

  Map<String, dynamic> toJson() => {
        "password": password,
        "platform": platform,
        "user_name": userName,
      };
}
