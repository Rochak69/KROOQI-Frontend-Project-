import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/big_text.dart';

import '../../../Utils/container_decorations.dart';

import 'recent_enquiries_page_view/recent_enquiries_page_view.dart';

class RecentEnquiriesWidget extends StatelessWidget {
  const RecentEnquiriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: shadowedTopOnlyCircularContainer(),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: BigText("Recent Enquiries")),
              const Padding(padding: EdgeInsets.all(8)),
              const RecentEnquiriesPageView()
            ])));
  }
}
