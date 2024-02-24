class TUser {
  TUser({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.imgURL,
    this.profit,
    this.roleId,
    this.status,
    this.rate,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.otp,
    this.otpExpires,
    this.password,
    this.booked,
    this.address,
    this.addressDetails,
    this.dob,
    this.gender,
    this.phone,
  });

  TUser.fromJson(dynamic json) {
    try {
      id = json['_id'];
      firstName = json['firstName'];
      lastName = json['lastName'];
      email = json['email'];
      imgURL = json['imgURL'];
      profit = json['profit'];
      roleId = json['role_id'];
      status = json['status'];
      rate = json['rate'];
      createdAt = json['createdAt'];
      updatedAt = json['updatedAt'];
      v = json['__v'];
      otp = json['otp'];
      otpExpires = json['otpExpires'];
      password = json['password'];
      booked = json['booked'];
      address = json['address'];
      addressDetails = json['address_details'];
      dob = json['dob'];
      gender = json['gender'];
      phone = json['phone'];
    } catch (e) {
      print("TUser.fromJson::"+e.toString());
    }
  }

  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? imgURL;
  num? profit;
  String? roleId;
  bool? status;
  num? rate;
  String? createdAt;
  String? updatedAt;
  num? v;
  num? otp;
  String? otpExpires;
  String? password;
  num? booked;
  String? address;
  String? addressDetails;
  String? dob;
  String? gender;
  String? phone;

  @override
  String toString() {
    return 'TUser{id: $id, firstName: $firstName, lastName: $lastName, email: $email, imgURL: $imgURL, profit: $profit, roleId: $roleId, status: $status, rate: $rate, createdAt: $createdAt, updatedAt: $updatedAt, v: $v, otp: $otp, otpExpires: $otpExpires, password: $password, booked: $booked, address: $address, addressDetails: $addressDetails, dob: $dob, gender: $gender, phone: $phone}';
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['firstName'] = firstName;
    map['lastName'] = lastName;
    map['email'] = email;
    map['imgURL'] = imgURL;
    map['profit'] = profit;
    map['role_id'] = roleId;
    map['status'] = status;
    map['rate'] = rate;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['__v'] = v;
    map['otp'] = otp;
    map['otpExpires'] = otpExpires;
    map['password'] = password;
    map['booked'] = booked;
    map['address'] = address;
    map['address_details'] = addressDetails;
    map['dob'] = dob;
    map['gender'] = gender;
    map['phone'] = phone;
    return map;
  }

  String get displayName => "${firstName?.isNotEmpty == true ? firstName : ""} ${lastName?.isNotEmpty == true ? lastName : ""}";

  String get displayAvatar => imgURL ?? "";
}
