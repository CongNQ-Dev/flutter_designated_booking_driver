class RegisterRequest {
  RegisterRequest({
    this.otp,
    this.otpExpired,
    this.otpStored,
    this.firstName,
    this.lastName,
    this.password,
    this.email,
    this.imgURL,
  });

  RegisterRequest.fromJson(dynamic json) {
    otp = json['otp'];
    otpExpired = json['otpExpired'];
    otpStored = json['otpStored'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    imgURL = json['imgURL'];
  }

  int? otp;
  String? otpExpired;
  String? otpStored;
  String? firstName;
  String? lastName;
  String? password;
  String? email;
  String? imgURL;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['otp'] = otp;
    map['otpExpired'] = otpExpired;
    map['otpStored'] = otpStored;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['email'] = email;
    map['imgURL'] = imgURL;
    return map;
  }
}
