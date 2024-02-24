class BookingStatusRequest {
  String? bookingId;

  @override
  String toString() {
    return 'BookingStatusRequest{bookingId: $bookingId}';
  }

  BookingStatusRequest(this.bookingId);

  BookingStatusRequest.fromJson(Map<String, dynamic> json) {
    bookingId = json['bookingId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bookingId'] = bookingId;
    return data;
  }
}
