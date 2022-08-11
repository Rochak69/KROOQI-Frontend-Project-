import 'package:flutter/material.dart';

import '../../../Utils/small_colored_text.dart';

class ProfileCompletionExpansion extends StatefulWidget {
  const ProfileCompletionExpansion({Key? key}) : super(key: key);

  @override
  State<ProfileCompletionExpansion> createState() =>
      _ProfileCompletionExpansionState();
}

class _ProfileCompletionExpansionState
    extends State<ProfileCompletionExpansion> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text(
        'Profile completion',
        style: TextStyle(fontSize: 15),
      ),
      trailing: Icon(
        _customTileExpanded
            ? Icons.arrow_drop_down_circle
            : Icons.arrow_drop_down,
      ),
      children: [
        Row(
          children: [
            const Text(
              "Profile Completion ",
            ),
            const SizedBox(
              width: 5,
            ),
            SmallColoredText("75%")
          ],
        ),
      ],
      onExpansionChanged: (bool expanded) {
        setState(() => _customTileExpanded = expanded);
      },
    );
  }
}
