class AddressInfo {
  String? fullName;
  String? address;
  String? email;
  String? numberPhone;
  AddressInfo({this.fullName, this.address, this.email, this.numberPhone});
  factory AddressInfo.fromJson(Map<String, dynamic> json) {
    return AddressInfo(
      fullName: json['fullName'] ?? '',
      address: json['address'] ?? '',
      email: json['email'] ?? '',
      numberPhone: json['numberPhone'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "fullName": fullName,
        "address": address,
        "email": email,
        "numberPhone": numberPhone,
      };
}
