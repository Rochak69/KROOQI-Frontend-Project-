import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/models/rencent_enquiry.dart';

class RecentEnquiryProvider with ChangeNotifier {
  final List<RecentEnquiry> _items = [
    RecentEnquiry(
        propertType: "Apartment",
        propertyName: "Emirates Skyline Buyiliding",
        enquiryDescription: "Can you share the location of the",
        imageUrl: "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg",
        companyName: "Codeware Lab",
        personName: "Rochak"),
    RecentEnquiry(
        propertType: "Building",
        propertyName: "Tinkune roadside Buyiliding",
        enquiryDescription: "Can you share the location of this protiry?",
        imageUrl:
            "https://handhrealestates.com/wp-content/uploads/2019/09/banner12.jpg",
        companyName: "Cotiviti",
        personName: "George"),
    RecentEnquiry(
        propertType: "Real State",
        propertyName: "Koreshor Skyline Buyiliding",
        enquiryDescription: "What is the cost of this property",
        imageUrl:
            "https://image.shutterstock.com/image-vector/logistic-other-ways-logo-template-600w-1984526201.jpg",
        companyName: "Fusemachine ",
        personName: "Aseshsh"),
    RecentEnquiry(
        propertType: "Apartment",
        propertyName: "Emirates Skyline Buyiliding",
        enquiryDescription: "Can you share the location of the",
        imageUrl: "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg",
        companyName: "Codeware Lab",
        personName: "Rochak")
  ];

  List<RecentEnquiry> get items {
    return [..._items];
  }
}
