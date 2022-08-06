import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:flutter_application_1/widgets/top_bar.dart';

class FAQ extends StatefulWidget {
  static const name = 'f';
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    List<bool> isExapanded = [true, false, false, false, true, false];
    return Scaffold(
        backgroundColor: kColorAccent,
        appBar: const TopBar(),
        body: Column(
          children: [
            ExpansionPanelList(
              expansionCallback: (int index, bool isOpen) {
                setState(() {
                  isExapanded[index] = !isOpen;
                });
              },
              children: [
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('Item 1'),
                    );
                  },
                  body: const ListTile(
                    title: Text('Item 1 child'),
                    subtitle: Text('Details goes here'),
                  ),
                  isExpanded: isExapanded[0],
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('Item 2'),
                    );
                  },
                  body: const ListTile(
                    title: Text('Item 2 child'),
                    subtitle: Text('Details goes here'),
                  ),
                  isExpanded: isExapanded[1],
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('Item 2'),
                    );
                  },
                  body: const ListTile(
                    title: Text('Item 2 child'),
                    subtitle: Text('Details goes here'),
                  ),
                  isExpanded: isExapanded[2],
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('Item 2'),
                    );
                  },
                  body: const ListTile(
                    title: Text('Item 2 child'),
                    subtitle: Text('Details goes here'),
                  ),
                  isExpanded: isExapanded[3],
                ),
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return const ListTile(
                      title: Text('Item 2'),
                    );
                  },
                  body: const ListTile(
                    title: Text('Item 2 child'),
                    subtitle: Text('Details goes here'),
                  ),
                  isExpanded: isExapanded[4],
                )
              ],
            )
          ],
        ));
  }
}
