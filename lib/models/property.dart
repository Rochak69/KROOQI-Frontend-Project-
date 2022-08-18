class Property {
  String imageUrl;
  String date;
  String description;
  String location, profileName, profileCompletionValue, price;

  Property(
      {required this.imageUrl,
      required this.date,
      required this.description,
      required this.location,
      required this.profileName,
      required this.profileCompletionValue,
      required this.price});

  // factory Property.fromJson(Map<String, dynamic> json) {
  //   return Property(
  //       imageUrl: json["imageUrl"] ?? "",
  //       date: json["date"] ?? "",
  //       description: json["description"] ?? "",
  //       location: json["location"] ?? "",
  //       profileName: json["profileName"] ?? "",
  //       profileCompletionValue: json["profileCompletionValue"] ?? "",
  //       price: json["price"] ?? "");
  // }
}
