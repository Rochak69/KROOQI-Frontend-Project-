import 'package:flutter/material.dart';

import 'package:flutter_application_1/api/api_service_class.dart';
import 'package:flutter_application_1/models/property.dart';
import 'package:flutter_application_1/screens/dashboard_screens/most_viewed_properties_widget/most_viewed_properties_tiles/apartment_location_and_price.dart';
import 'package:flutter_application_1/screens/dashboard_screens/most_viewed_properties_widget/most_viewed_properties_tiles/bottom_three_icons.dart';

import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../constants/theme.dart';

class MostViewedPropertiesTiles extends StatefulWidget {
  const MostViewedPropertiesTiles({Key? key}) : super(key: key);

  @override
  State<MostViewedPropertiesTiles> createState() =>
      _MostViewedPropertiesTilesState();
}

class _MostViewedPropertiesTilesState extends State<MostViewedPropertiesTiles> {
  @override
  void initState() {
    // TODO: implement initState

    // final postModel = Provider.of<Test>(context, listen: false);
    // postModel.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    // final propertiesData = Provider.of<Properties>(context);
    // final properties = propertiesData.items;

    // final propertiesData = Provider.of<Test>(context);
    // final properties = propertiesData.properties;

    return FutureBuilder(
        future: getPropertiesData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  // Navigator.pushNamed(context, PropertyDetailsPhotos.name);
                  // print();
                },
                child: Container(
                  decoration: _boxDecorationTiles(),
                  child: Column(
                    children: [
                      _buildPropertyImage(snapshot.data, index),
                      _buildPublishedDate(snapshot.data, index),
                      _buildApartmentName(snapshot.data, index),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0, left: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ApartmentLocationAndPrice(snapshot.data, index),
                            const SizedBox(height: 7),
                            const Divider(thickness: 2),
                            const SizedBox(height: 7),
                            _buildProfileName(snapshot.data, index),
                            const SizedBox(height: 7),
                            _buildProfileCompletionIndicator(),
                            const SizedBox(height: 8),
                            _buildProfileCompletionValue(snapshot.data, index),
                            const SizedBox(height: 20),
                            const BottomThreeIcons(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
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
