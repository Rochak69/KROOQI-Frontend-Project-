import 'package:flutter/cupertino.dart';

import '../agent.dart';

class AgentsProvider with ChangeNotifier {
  final List<Agent> _items = [
    Agent(
        imageUrl: "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg",
        name: "Nijas Nazar",
        urduName: "NNN"),
    Agent(
        imageUrl:
            "http://cdn.home-designing.com/wp-content/uploads/2019/01/Small-apartment-design.jpg",
        name: "Rochak Shrestha",
        urduName: "RRR"),
    Agent(
        imageUrl:
            "https://image.shutterstock.com/image-vector/logistic-other-ways-logo-template-600w-1984526201.jpg",
        name: "George Maharjan",
        urduName: "GGG"),
    Agent(
        imageUrl: "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg",
        name: "Aashesh Shrestha",
        urduName: "AAA"),
    Agent(
        imageUrl:
            "http://cdn.home-designing.com/wp-content/uploads/2019/01/Small-apartment-design.jpg",
        name: "Sese limbu",
        urduName: "SSS"),
    Agent(
        imageUrl:
            "https://image.shutterstock.com/image-vector/logistic-other-ways-logo-template-600w-1984526201.jpg",
        name: "Nijas Nazar",
        urduName: "AAA")
  ];
  List<Agent> get items {
    return [..._items];
  }
}
