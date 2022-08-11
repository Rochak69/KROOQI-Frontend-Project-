import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/providers/recent_enquiries_provider.dart';
import 'package:provider/provider.dart';

import '../../../../models/rencent_enquiry.dart';

class RecentEnquiriesPageView extends StatefulWidget {
  const RecentEnquiriesPageView({Key? key}) : super(key: key);
  @override
  State<RecentEnquiriesPageView> createState() =>
      _RecentEnquiriesPageViewState();
}

class _RecentEnquiriesPageViewState extends State<RecentEnquiriesPageView> {
  PageController pageController = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    final recentEnquiryData = Provider.of<RecentEnquiryProvider>(context);
    final recentEnquiries = recentEnquiryData.items;
    return SizedBox(
        height: 225,
        child: PageView.builder(
            controller: pageController,
            itemCount: recentEnquiries.length,
            itemBuilder: (context, index) {
              return Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.only(left: 5, right: 10),
                  decoration: _containerDecorationDualColor(),
                  child: Column(children: [
                    _buildPropertyType(recentEnquiries, index),
                    const SizedBox(height: 5),
                    _buildPropertyName(recentEnquiries, index),
                    const SizedBox(height: 16),
                    _buildHorizontalDivider(),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildEnquiryPersonDetails(recentEnquiries, index),
                        _buildEnquiryPersonDetails(recentEnquiries, index)
                      ],
                    ),
                    const SizedBox(height: 35),
                    _buildEnquiryMessage(recentEnquiries, index)
                  ]));
            }));
  }

  Row _buildEnquiryPersonDetails(
      List<RecentEnquiry> recentEnquiries, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(recentEnquiries[index].imageUrl),
        ),
        Column(
          children: [
            Text(recentEnquiries[index].personName,
                style: const TextStyle(color: Colors.grey, fontSize: 13)),
            Text(recentEnquiries[index].companyName,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
          ],
        )
      ],
    );
  }

  Divider _buildHorizontalDivider() {
    return const Divider(
      indent: 6,
      endIndent: 6,
      thickness: 2,
    );
  }

  Align _buildPropertyName(List<RecentEnquiry> recentEnquiries, int index) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        recentEnquiries[index].propertyName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Align _buildPropertyType(List<RecentEnquiry> recentEnquiries, int index) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: kColorAccent, borderRadius: BorderRadius.circular(25)),
          child: Text(
            recentEnquiries[index].propertType,
          )),
    );
  }

  Text _buildEnquiryMessage(List<RecentEnquiry> recentEnquiries, int index) {
    return Text(
      recentEnquiries[index].enquiryDescription,
      style: const TextStyle(color: Colors.grey, fontSize: 15),
    );
  }

  BoxDecoration _containerDecorationDualColor() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 255, 255),
            Color(0xfff7f7f7),
            Color(0xfff7f7f7),
          ],
          stops: [0.75, 0.1, 0.1, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          transform: null,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: const Offset(0.0, 0.0), //(x,y)
              blurRadius: 5,
              spreadRadius: 0.001),
        ]);
  }
}
