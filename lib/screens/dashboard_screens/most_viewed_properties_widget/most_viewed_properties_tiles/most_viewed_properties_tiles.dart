import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/property.dart';
import 'package:flutter_application_1/providers/properties_provider.dart';
import 'package:flutter_application_1/screens/dashboard_screens/most_viewed_properties_widget/most_viewed_properties_tiles/apartment_location_and_price.dart';
import 'package:flutter_application_1/screens/dashboard_screens/most_viewed_properties_widget/most_viewed_properties_tiles/bottom_three_icons.dart';
import 'package:flutter_application_1/screens/property_details/details_screen/property_details_photos.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../constants/theme.dart';
import 'package:provider/provider.dart';

class MostViewedPropertiesTiles extends StatelessWidget {
  const MostViewedPropertiesTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final propertiesData = Provider.of<Properties>(context);
    final properties = propertiesData.items;

    return SizedBox(
      height: 500,
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: properties.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, PropertyDetailsPhotos.name);
              },
              child: Container(
                decoration: _boxDecorationTiles(),
                child: Column(
                  children: [
                    _buildPropertyImage(properties, index),
                    _buildPublishedDate(properties, index),
                    _buildApartmentName(properties, index),
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
                          _buildProfileName(properties, index),
                          const SizedBox(height: 7),
                          _buildProfileCompletionIndicator(),
                          const SizedBox(height: 8),
                          _buildProfileCompletionValue(properties, index),
                          const SizedBox(height: 20),
                          const BottomThreeIcons(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  _buildPropertyImage(List<Property> properties, int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Image.network(
          height: 150,
          fit: BoxFit.fill,
          width: double.infinity,
          properties[index].imageUrl),
    );
  }

  _buildPublishedDate(List<Property> properties, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: kColorAccent, borderRadius: BorderRadius.circular(25)),
            child: Text(
              properties[index].date,
            )),
        const Padding(padding: EdgeInsets.all(10)),
        const Text("KROOQI-101", style: TextStyle(fontWeight: FontWeight.bold))
      ],
    );
  }

  _buildApartmentName(List<Property> properties, int index) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Text(
        properties[index].description,
        style: const TextStyle(
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

  _buildProfileName(List<Property> properties, int index) {
    return Align(
        alignment: Alignment.topLeft,
        child: Text(properties[index].profileName,
            style: const TextStyle(fontWeight: FontWeight.bold)));
  }

  _buildProfileCompletionValue(List<Property> properties, int index) {
    return Row(
      children: [
        const Text("Profile COmpletion"),
        const SizedBox(
          width: 5,
        ),
        Text(properties[index].profileCompletionValue)
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
