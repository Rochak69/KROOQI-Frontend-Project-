import 'dart:developer';

import 'package:flutter_application_1/models/property.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

getPropertiesData() async {
  print("starting");

  var response = await http.get(Uri.https("jsonkeeper.com", "b/YTKS"));
  var jsonData = jsonDecode(response.body);

  List<Property> properties = [];
  for (var i in jsonData) {
    Property property = Property(
        imageUrl: i["imageUrl"],
        date: i["date"],
        description: i["description"],
        location: i["location"],
        profileName: i["profileName"],
        profileCompletionValue: i["profileCompletionValue"],
        price: i["price"]);
    properties.add(property);
  }
  print(properties[0].date);
  return properties;
}
