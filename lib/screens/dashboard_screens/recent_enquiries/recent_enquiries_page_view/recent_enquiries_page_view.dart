import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';

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
    return SizedBox(
        height: 225,
        child: PageView.builder(
            controller: pageController,
            itemCount: 2,
            itemBuilder: (context, position) {
              return Container(
                  margin: const EdgeInsets.only(left: 5, right: 10),
                  decoration: _containerDecorationDualColor(),
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(children: [
                        _buildApartment(),
                        const SizedBox(height: 5),
                        _buildApartmentName(),
                        const SizedBox(height: 16),
                        _buildHorizontalDivider(),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildEnquiryPersonDetails(),
                            _buildEnquiryPersonDetails()
                          ],
                        ),
                        const SizedBox(height: 35),
                        _buildEnquiryMessage()
                      ])));
            }));
  }

  Row _buildEnquiryPersonDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://thumbs.dreamstime.com/z/arab-person-24916754.jpg"),
        ),
        Column(
          children: const [
            Text("Customer",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
            Text("Codeware Lab",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))
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

  Align _buildApartmentName() {
    return const Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Emirates Skyline Building",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Align _buildApartment() {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: kColorAccent, borderRadius: BorderRadius.circular(25)),
          child: const Text(
            "Apartment",
          )),
    );
  }

  Text _buildEnquiryMessage() {
    return const Text(
      "Can you share the location of the ",
      style: TextStyle(color: Colors.grey, fontSize: 15),
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
