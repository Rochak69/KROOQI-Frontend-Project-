import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboard_screens/most_viewed_properties_widget/most_viewed_properties_tiles/apartment_location_and_price.dart';
import 'package:flutter_application_1/screens/dashboard_screens/most_viewed_properties_widget/most_viewed_properties_tiles/bottom_three_icons.dart';
import 'package:flutter_application_1/screens/property_details/details_screen/property_details_photos.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../constants/theme.dart';

class MostViewedPropertiesTiles extends StatelessWidget {
  const MostViewedPropertiesTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PropertyDetailsPhotos.name);
      },
      child: Container(
        decoration: _boxDecorationTiles(),
        child: Column(
          children: [
            _buildPropertyImage(),
            _buildPublishedDate(),
            _buildApartmentName(),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, left: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ApartmentLocationAndPrice(),
                  const SizedBox(height: 7),
                  const Divider(thickness: 2),
                  const SizedBox(height: 7),
                  _buildProfileName(),
                  const SizedBox(height: 7),
                  _buildProfileCompletionIndicator(),
                  const SizedBox(height: 8),
                  _buildProfileCompletionValue(),
                  const SizedBox(height: 20),
                  const BottomThreeIcons()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildPropertyImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.network(
          height: 150,
          fit: BoxFit.fill,
          width: double.infinity,
          "https://handhrealestates.com/wp-content/uploads/2019/09/banner12.jpg"),
    );
  }

  _buildPublishedDate() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: kColorAccent, borderRadius: BorderRadius.circular(25)),
            child: const Text(
              "25 MAr 2020",
            )),
        const Padding(padding: EdgeInsets.all(10)),
        const Text("KROOQI-101", style: TextStyle(fontWeight: FontWeight.bold))
      ],
    );
  }

  _buildApartmentName() {
    return const Padding(
      padding: EdgeInsets.all(18),
      child: Text(
        "BHK Funerinshed Apartment in the houseeeeeeeeeeeeeee",
        style: TextStyle(
            overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold),
      ),
    );
  }

  _buildProfileCompletionIndicator() {
    return LinearPercentIndicator(
        lineHeight: 10,
        percent: 0.8,
        progressColor: kColorPrimary,
        barRadius: const Radius.circular(25));
  }

  _buildProfileName() {
    return const Align(
        alignment: Alignment.topLeft,
        child:
            Text("Nazar Nazr", style: TextStyle(fontWeight: FontWeight.bold)));
  }

  _buildProfileCompletionValue() {
    return Row(
      children: const [
        Text("Profile COmpletion"),
        SizedBox(
          width: 5,
        ),
        Text("75%")
      ],
    );
  }

  _boxDecorationTiles() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Colors.white,
            Color(0xfff7f7f7),
            Color(0xfff7f7f7),
          ],
          stops: [0.88, 0.1, 0.1, 1.0],
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
