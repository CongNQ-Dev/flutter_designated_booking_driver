class RegisterResponse {
  RegisterResponse({
    required this.accessToken,
  });

  RegisterResponse.fromJson(dynamic json) {
    accessToken = json['accessToken'];
  }

  String accessToken = "";

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['accessToken'] = accessToken;
    return map;
  }
}
