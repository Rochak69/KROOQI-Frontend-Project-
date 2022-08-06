import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/theme.dart';
import '../filter_bottom_modal/filter_screen.dart';
import 'package:toggle_switch/toggle_switch.dart';

class TopToogleSwitch extends StatelessWidget {
  const TopToogleSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ToggleSwitch(
          minHeight: 50,
          minWidth: 130,
          initialLabelIndex: 0,
          totalSwitches: 2,
          labels: const ['Properties', 'Buildings'],
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
