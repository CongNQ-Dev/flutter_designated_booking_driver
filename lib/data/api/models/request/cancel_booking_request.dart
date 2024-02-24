class BookingCancelRequest {
  String? bookingId;
  String? cancelReason;

  @override
  String toString() {
    return 'BookingCancelRequest{bookingId: $bookingId, cancelReason: $cancelReason}';
  }

  BookingCancelRequest(this.bookingId, this.cancelReason);

  BookingCancelRequest.fromJson(Map<String, dynamic> json) {
    bookingId = json['bookingId'];
    cancelReason = json['cancelReason'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bookingId'] = bookingId;
    data['cancelReason'] = cancelReason;
    return data;
  }
}
