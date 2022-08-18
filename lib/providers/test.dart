import 'package:flutter/widgets.dart';

import 'package:flutter_application_1/api/api_service_class.dart';
import 'package:flutter_application_1/models/property.dart';

class Test with ChangeNotifier {
  Future<List<Property>> properties = getPropertiesData();

  void addProperty() {
    notifyListeners();
  }
}
