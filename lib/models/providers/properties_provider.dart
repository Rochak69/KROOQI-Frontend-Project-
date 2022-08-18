import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/property.dart';

class Properties with ChangeNotifier {
  final List<Property> _items = [
    Property(
        imageUrl:
            'https://handhrealestates.com/wp-content/uploads/2019/09/banner12.jpg',
        date: '2021-07-08',
        description: 'BHK Apartment aviable three flooor in the countrry side',
        location: 'Riyadha, Saudi Arabia',
        profileName: "Ali Afsar",
        profileCompletionValue: "75%",
        price: '200,000'),
    Property(
        imageUrl:
            'https://images.ctfassets.net/pg6xj64qk0kh/2r4QaBLvhQFH1mPGljSdR9/39b737d93854060282f6b4a9b9893202/camden-paces-apartments-buckhead-ga-terraces-living-room-with-den_1.jpg',
        date: '2022-98-99',
        description: 'Codeware labs Apratment for seel in thrid florr',
        location: 'Koteshor, Nepal',
        profileName: "Codeware Labs",
        profileCompletionValue: "60%",
        price: '800,000'),
    Property(
        imageUrl:
            'http://cdn.home-designing.com/wp-content/uploads/2019/01/Small-apartment-design.jpg',
        date: '1999-07-08',
        description: 'United college builing 3 toilet, 3 bedrooms ',
        location: 'Kumaripati, Lalitpur',
        profileName: "United Acandemy",
        profileCompletionValue: "50%",
        price: '50,000'),
    Property(
        imageUrl:
            'https://www.phillyaptrentals.com/wp-content/uploads/2020/12/apartment-building-what-makes-good-apartment-building-scaled.jpg',
        date: '2021-07-08',
        description: 'BHK Apartment',
        location: 'Riyadha, Saudi Arabia',
        profileName: "Codeware Labs",
        profileCompletionValue: "75%",
        price: '90,000'),
  ];

  List<Property> get items {
    return [..._items];
  }

  void addProperty() {
    notifyListeners();
  }
}
