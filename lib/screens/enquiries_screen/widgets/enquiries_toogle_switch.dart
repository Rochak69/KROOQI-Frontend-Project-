import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../properties_screen/filter_bottom_modal/filter_screen.dart';

class EnquiriesToogleSwitch extends StatelessWidget {
  const EnquiriesToogleSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ToggleSwitch(
          minHeight: 40,
          minWidth: 140,
          initialLabelIndex: 0,
          totalSwitches: 2,
          labels: const ['Not Responded(8)', 'Responded(5)'],
          activeBgColor: const [Color(0xfffaebd7)],
          activeFgColor: kColorPrimary,
          inactiveBgColor: Colors.white,
          borderColor: [Colors.grey.shade100],
          cornerRadius: 30,
          onToggle: (index) {
            debugPrint('switched to: $index');
          },
        ),
        const Filter(),
      ],
    );
  }
}
