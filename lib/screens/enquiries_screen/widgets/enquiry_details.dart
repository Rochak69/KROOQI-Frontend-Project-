import 'package:flutter/material.dart';
import 'package:flutter_application_1/Utils/small_colored_text.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/providers/enquiries_provider.dart';
import 'package:provider/provider.dart';

import '../../../models/enquiries.dart';

class EnquiryDetails extends StatelessWidget {
  const EnquiryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final enquiryData = Provider.of<EnquiryProvider>(context);
    final enquiries = enquiryData.items;
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      shrinkWrap: true,
      itemCount: enquiries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            padding: const EdgeInsets.all(16),
            decoration: _enquiryContainerDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCircleAvatar(enquiries, index),
                const SizedBox(width: 10),
                _buildName(enquiries, index),
                _buildSmallWhiteContainer(enquiries, index)
              ],
            ));
      },
    );
  }

  _enquiryContainerDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: kColorPrimary,
      boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(0.0, 0.0), //(x,y)
            blurRadius: 5,
            spreadRadius: 0.001),
      ],
    );
  }

  _buildCircleAvatar(List<Enquiry> enquiries, int index) {
    return CircleAvatar(
      backgroundImage: NetworkImage(enquiries[index].imageUrl),
    );
  }

  _buildName(List<Enquiry> enquiries, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(enquiries[index].companyName,
            style: TextStyle(color: Colors.white)),
        SizedBox(height: 1),
        Text(
          enquiries[index].personName,
          style: TextStyle(color: Colors.white, fontSize: 10),
        )
      ],
    );
  }

  _buildSmallWhiteContainer(List<Enquiry> enquiries, int index) {
    return Container(
      height: 20,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: Center(child: SmallColoredText(enquiries[index].completedEnquiry)),
    );
  }
}
