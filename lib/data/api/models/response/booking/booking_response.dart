import '../../../converters/date_time_converter.dart';
import '../user/TUser.dart';
import '../vehicle/vehicle_details.dart';

/// _id : "64929eab7af7c517fe884360"
/// user_id : {"_id":"6491d0dc0572583675d7c87e","firstName":"Đặng Nguyễn","lastName":"Minh An","email":"dangnguyenminhan.008096@gmail.com","imgURL":"https://lh3.googleusercontent.com/a/AAcHTtcaHt1EK4eDMXc0_uFm5xfuBc6YuHGw5W_df3BF=s96-c","profit":0,"role_id":"63e4733e62bf96d8df480f59","status":true,"rate":0,"createdAt":"2023-06-20T16:16:28.156Z","updatedAt":"2023-06-21T07:15:22.064Z","__v":0,"otp":814912,"otpExpires":"2023-06-21T07:14:25.066Z","password":"$2b$10$A6E7X4N90.KzwqGm3XDZP.Sn1SIZ43waCyuLw6N/RIaj9XETVANRa"}
/// vehicle_id : {"_id":"6488187d6ce2e5765e21add3","name":"Honda City 2023","user_id":"6487ce3fe2c09142810ff413","licensePlate":"H5-33125","description":"The car is well used by the family ","price":350000,"location":"Quận Thủ Đức, TP. Hồ Chí Minh","yearOfManufacturer":2023,"insurance":true,"images":["https://tienthu.com.vn/uploads/albums/449/honda-city-do-ca-tinh-rs-l.png","https://imgd.aeplcdn.com/664x374/n/cw/ec/134287/2023-city-exterior-right-front-three-quarter.jpeg?isig=0&q=75"],"mortgage":false,"booked":0,"isRented":true,"rate":0,"__v":0,"updatedAt":"2023-06-27T13:10:52.857Z"}
/// bookingStart : "2023-06-30T08:54:00.000Z"
/// bookingEnd : "2023-07-15T08:54:00.000Z"
/// bookingStatus : "Done"
/// totalPrice : 5250000
/// hasDriver : false
/// isPaid : true
/// isTransferred : true
/// createdAt : "2023-06-21T06:54:35.140Z"
/// updatedAt : "2023-06-21T12:22:32.381Z"
/// __v : 0

class BookingItem {
  BookingItem({
    String? id,
    TUser? userId,
    VehicleDetails? vehicleId,
    DateTime? bookingStart,
    DateTime? bookingEnd,
    String? bookingStatus,
    num? totalPrice,
    bool? hasDriver,
    bool? isPaid,
    bool? isTransferred,
    String? createdAt,
    String? updatedAt,
    num? v,
  }) {
    _id = id;
    _userId = userId;
    _vehicleId = vehicleId;
    _bookingStart = bookingStart;
    _bookingEnd = bookingEnd;
    _bookingStatus = bookingStatus;
    _totalPrice = totalPrice;
    _hasDriver = hasDriver;
    _isPaid = isPaid;
    _isTransferred = isTransferred;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
  }

  @override
  String toString() {
    return 'BookingItem{_userId: $_userId, _vehicleId: $_vehicleId, _bookingStart: $_bookingStart, _bookingEnd: $_bookingEnd, _bookingStatus: $_bookingStatus, _totalPrice: $_totalPrice}';
  }

  final datetime = const DateTimeConverter();

  BookingItem.fromJson(dynamic json) {
    try {
      _id = json['_id'];
      _userId = json['user_id'] != null ? TUser.fromJson(json['user_id']) : null;
      _vehicleId = json['vehicle_id'] != null ? VehicleDetails.fromJson(json['vehicle_id']) : null;
      _bookingStart = json['bookingStart'] != null ? datetime.fromJson(json['bookingStart']) : null;
      _bookingEnd = json['bookingEnd'] != null ? datetime.fromJson(json['bookingEnd']) : null;
      _bookingStatus = json['bookingStatus'];
      _totalPrice = json['totalPrice'];
      _hasDriver = json['hasDriver'];
      _isPaid = json['isPaid'];
      _isTransferred = json['isTransferred'];
      _createdAt = json['createdAt'];
      _updatedAt = json['updatedAt'];
      _v = json['__v'];
    } catch (e) {
      print("BookingItem.fromJson:$e");
    }
  }

  String? _id;
  TUser? _userId;
  VehicleDetails? _vehicleId;
  DateTime? _bookingStart;
  DateTime? _bookingEnd;
  String? _bookingStatus;
  num? _totalPrice;
  bool? _hasDriver;
  bool? _isPaid;
  bool? _isTransferred;
  String? _createdAt;
  String? _updatedAt;
  num? _v;

  String? get id => _id;

  TUser? get userId => _userId;

  VehicleDetails? get vehicleId => _vehicleId;

  DateTime? get bookingStart => _bookingStart;

  DateTime? get bookingEnd => _bookingEnd;

  String? get bookingStatus => _bookingStatus;

  num? get totalPrice => _totalPrice;

  bool? get hasDriver => _hasDriver;

  bool? get isPaid => _isPaid;

  bool? get isTransferred => _isTransferred;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    if (_userId != null) {
      map['user_id'] = _userId?.toJson();
    }
    if (_vehicleId != null) {
      map['vehicle_id'] = _vehicleId?.toJson();
    }
    map['bookingStart'] = _bookingStart;
    map['bookingEnd'] = _bookingEnd;
    map['bookingStatus'] = _bookingStatus;
    map['totalPrice'] = _totalPrice;
    map['hasDriver'] = _hasDriver;
    map['isPaid'] = _isPaid;
    map['isTransferred'] = _isTransferred;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }
}
