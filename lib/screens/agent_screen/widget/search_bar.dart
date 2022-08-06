import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xfff7f7f7),
          borderRadius: BorderRadius.circular(30)),
      child: Card(
        color: const Color(0xfff7f7f7),
        child: Row(children: const [
          Icon(Icons.search_outlined),
          Padding(padding: EdgeInsets.all(4)),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                  filled: true, hintText: "Search by Agent Email/phone/number"),
            ),
          )
        ]),
      ),
    );
  }
}
