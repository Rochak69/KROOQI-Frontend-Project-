import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/big_text.dart';
import 'package:flutter_application_1/providers/agents_provider.dart';
import 'package:flutter_application_1/providers/recent_enquiries_provider.dart';
import 'package:provider/provider.dart';

import '../../../Utils/container_decorations.dart';

import 'recent_enquiries_page_view/recent_enquiries_page_view.dart';

class RecentEnquiriesWidget extends StatelessWidget {
  const RecentEnquiriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecentEnquiryProvider(),
      child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: shadowedTopOnlyCircularContainer(),
          child: Column(children: [
            Align(
                alignment: Alignment.topLeft,
                child: BigText("Recent Enquiries")),
            const Padding(padding: EdgeInsets.all(8)),
            const RecentEnquiriesPageView()
          ])),
    );
  }
}
