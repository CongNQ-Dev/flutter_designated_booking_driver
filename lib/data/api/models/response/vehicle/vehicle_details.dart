import '../user/TUser.dart';

/// _id : "6488187d6ce2e5765e21add3"
/// name : "Honda City 2023"
/// user_id : "6487ce3fe2c09142810ff413"
/// licensePlate : "H5-33125"
/// description : "The car is well used by the family "
/// price : 350000
/// location : "Quận Thủ Đức, TP. Hồ Chí Minh"
/// yearOfManufacturer : 2023
/// insurance : true
/// images : ["https://tienthu.com.vn/uploads/albums/449/honda-city-do-ca-tinh-rs-l.png","https://imgd.aeplcdn.com/664x374/n/cw/ec/134287/2023-city-exterior-right-front-three-quarter.jpeg?isig=0&q=75"]
/// mortgage : false
/// booked : 0
/// isRented : true
/// rate : 0
/// __v : 0
/// updatedAt : "2023-06-27T13:10:52.857Z"

class VehicleDetails {
  VehicleDetails({
    String? id,
    String? name,
    dynamic userId,
    String? licensePlate,
    String? description,
    num? price,
    String? location,
    num? yearOfManufacturer,
    bool? insurance,
    List<String>? images,
    bool? mortgage,
    num? booked,
    bool? isRented,
    num? rate,
    num? v,
    String? updatedAt,
  }) {
    _id = id;
    _name = name;
    _userId = userId;
    _licensePlate = licensePlate;
    _description = description;
    _price = price;
    _location = location;
    _yearOfManufacturer = yearOfManufacturer;
    _insurance = insurance;
    _images = images;
    _mortgage = mortgage;
    _booked = booked;
    _isRented = isRented;
    _rate = rate;
    _v = v;
    _updatedAt = updatedAt;
  }

  @override
  String toString() {
    return 'VehicleDetails{_name: $_name, _price: $_price, _location: $_location, _yearOfManufacturer: $_yearOfManufacturer, _isRented: $_isRented}';
  }

  VehicleDetails.fromJson(dynamic json) {
    _id = json['_id'];
    _name = json['name'];
    _userId = json['user_id'];
    _userId = json['user_id'] != null ? (json['user_id'] is String ? json['user_id'] : TUser.fromJson(json['user_id'])) : null;
    _licensePlate = json['licensePlate'];
    _description = json['description'];
    _price = json['price'];
    _location = json['location'];
    _yearOfManufacturer = json['yearOfManufacturer'];
    _insurance = json['insurance'];
    _images = json['images'] != null ? json['images'].cast<String>() : [];
    _mortgage = json['mortgage'];
    _booked = json['booked'];
    _isRented = json['isRented'];
    _rate = json['rate'];
    _v = json['__v'];
    _updatedAt = json['updatedAt'];
  }

  String? _id;
  String? _name;
  dynamic _userId;
  String? _licensePlate;
  String? _description;
  num? _price;
  String? _location;
  num? _yearOfManufacturer;
  bool? _insurance;
  List<String>? _images;
  bool? _mortgage;
  num? _booked;
  bool? _isRented;
  num? _rate;
  num? _v;
  String? _updatedAt;

  String? get id => _id;

  String? get name => _name;

  dynamic get userId => _userId;

  String? get licensePlate => _licensePlate;

  String? get description => _description;

  num get price => _price ?? 0;

  String? get location => _location;

  num? get yearOfManufacturer => _yearOfManufacturer;

  bool? get insurance => _insurance;

  List<String>? get images => _images;

  bool? get mortgage => _mortgage;

  num? get booked => _booked;

  bool? get isRented => _isRented;

  num? get rate => _rate;

  num? get v => _v;

  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['name'] = _name;
    if (_userId != null) {
      map['user_id'] = _userId is String ? _userId : _userId?.toJson();
    }
    map['licensePlate'] = _licensePlate;
    map['description'] = _description;
    map['price'] = _price;
    map['location'] = _location;
    map['yearOfManufacturer'] = _yearOfManufacturer;
    map['insurance'] = _insurance;
    map['images'] = _images;
    map['mortgage'] = _mortgage;
    map['booked'] = _booked;
    map['isRented'] = _isRented;
    map['rate'] = _rate;
    map['__v'] = _v;
    map['updatedAt'] = _updatedAt;
    return map;
  }
}
