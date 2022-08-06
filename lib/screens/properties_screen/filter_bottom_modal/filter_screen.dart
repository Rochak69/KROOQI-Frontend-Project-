import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/properties_screen/filter_bottom_modal/filter_type_row.dart';
import 'package:flutter_application_1/screens/properties_screen/filter_bottom_modal/fliters_card.dart';
import 'package:flutter_application_1/screens/properties_screen/filter_bottom_modal/reset_apply_buttons.dart';
import '../../../Utils/big_text.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Icon(
        Icons.filter_alt_outlined,
        size: 40,
        color: Colors.grey,
      ),
      onTap: () {
        showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return FractionallySizedBox(
                heightFactor: 0.8,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(children: [
                    const SizedBox(height: 20),
                    _buildTitle(),
                    const SizedBox(height: 20),
                    FilterTypeRow("Listing Type", "Rent", "Buy"),
                    const SizedBox(height: 5),
                    FilterTypeRow("Type", "Residental", "Commercial"),
                    const SizedBox(height: 10),
                    FiltersCard("By Name", "CodeWare"),
                    const Divider(thickness: 1, height: 1),
                    FiltersCard("Properties", "CodeWare"),
                    const Divider(thickness: 1, height: 1),
                    FiltersCard("City", "CodeWare"),
                    const Divider(thickness: 1, height: 1),
                    FiltersCard("District", "CodeWare"),
                    const Divider(thickness: 1, height: 1),
                    const SizedBox(height: 60),
                    const ResetApplyButtons()
                  ]),
                ),
              );
            });
      },
    );
  }

  _buildTitle() {
    return Align(alignment: Alignment.topLeft, child: BigText("Filters"));
  }
}
