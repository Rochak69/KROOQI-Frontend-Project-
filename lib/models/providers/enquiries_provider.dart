import 'package:flutter/cupertino.dart';

import '../enquiries.dart';

class EnquiryProvider with ChangeNotifier {
  final List<Enquiry> _items = [
    Enquiry(
        imageUrl:
            "https://image.shutterstock.com/image-vector/logistic-other-ways-logo-template-600w-1984526201.jpg",
        companyName: "Codeware Labs",
        personName: "Rochak Shrestha",
        completedEnquiry: "2/5"),
    Enquiry(
        imageUrl:
            'https://images.ctfassets.net/pg6xj64qk0kh/2r4QaBLvhQFH1mPGljSdR9/39b737d93854060282f6b4a9b9893202/camden-paces-apartments-buckhead-ga-terraces-living-room-with-den_1.jpg',
        companyName: "Deerwalk training center",
        personName: "Ram Basnet",
        completedEnquiry: "5/5"),
    Enquiry(
        imageUrl:
            "http://cdn.home-designing.com/wp-content/uploads/2019/01/Small-apartment-design.jpg",
        companyName: "Cotiviti Nepal",
        personName: "Shyam Shrestha",
        completedEnquiry: "2/5"),
    Enquiry(
        imageUrl:
            "https://image.shutterstock.com/image-vector/logistic-other-ways-logo-template-600w-1984526201.jpg",
        companyName: "Fusemachine Nepal ",
        personName: "Geroge Maharjan",
        completedEnquiry: "1/5"),
    Enquiry(
        imageUrl:
            "https://www.phillyaptrentals.com/wp-content/uploads/2020/12/apartment-building-what-makes-good-apartment-building-scaled.jpg",
        companyName: "Amnil Technologies",
        personName: "Aashiesh Limbu",
        completedEnquiry: "2/5"),
    Enquiry(
        imageUrl:
            "https://image.shutterstock.com/image-vector/logistic-other-ways-logo-template-600w-1984526201.jpg",
        companyName: "Codeware Labs",
        personName: "Rochak Shrestha",
        completedEnquiry: "2/5"),
    Enquiry(
        imageUrl:
            'https://images.ctfassets.net/pg6xj64qk0kh/2r4QaBLvhQFH1mPGljSdR9/39b737d93854060282f6b4a9b9893202/camden-paces-apartments-buckhead-ga-terraces-living-room-with-den_1.jpg',
        companyName: "Deerwalk training center",
        personName: "Ram Basnet",
        completedEnquiry: "5/5"),
    Enquiry(
        imageUrl:
            "http://cdn.home-designing.com/wp-content/uploads/2019/01/Small-apartment-design.jpg",
        companyName: "Cotiviti Nepal",
        personName: "Shyam Shrestha",
        completedEnquiry: "2/5"),
  ];

  List<Enquiry> get items {
    return [..._items];
  }

  void addProperty() {
    notifyListeners();
  }
}
