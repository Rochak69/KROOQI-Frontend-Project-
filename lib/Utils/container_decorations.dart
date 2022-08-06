import 'package:flutter/material.dart';

BorderRadius topBorderOnly() {
  return const BorderRadius.only(
      topLeft: Radius.circular(30), topRight: Radius.circular(30));
}

BoxDecoration shadowedCircularContainer() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          offset: const Offset(0.0, 0.0), //(x,y)
          blurRadius: 5,
          spreadRadius: 0.001),
    ],
  );
}

BoxDecoration shadowedTopOnlyCircularContainer() {
  return BoxDecoration(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(25),
      topRight: Radius.circular(25),
    ),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
          color: Colors.grey.withOpacity(0.3),
          offset: const Offset(0.0, 0.0), //(x,y)
          blurRadius: 5,
          spreadRadius: 0.001),
    ],
  );
}
