class BookingRequest {
  String? bookingStart;
  String? bookingEnd;
  String? licensePlate;
  // String? voucherCode = 'WELCOME';

  BookingRequest(
    this.bookingStart,
    this.bookingEnd,
    this.licensePlate,
  );

  @override
  String toString() {
    return 'BookingRequest{bookingStart: $bookingStart, bookingEnd: $bookingEnd, licensePlate: $licensePlate,';
  }

  BookingRequest.fromJson(Map<String, dynamic> json) {
    bookingStart = json['bookingStart'];
    bookingEnd = json['bookingEnd'];
    licensePlate = json['licensePlate'];
    // voucherCode = json['voucherCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bookingStart'] = bookingStart;
    data['bookingEnd'] = bookingEnd;
    data['licensePlate'] = licensePlate;
    // data['voucherCode'] = voucherCode;
    return data;
  }
}
