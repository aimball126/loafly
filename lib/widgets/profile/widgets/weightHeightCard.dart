import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class WeightHeightCard extends StatelessWidget {
  const WeightHeightCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: const Color(0xFF2F353E),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          details("Name", "Ayoub"),
          details("home address", "Janzour"),
          details("phone", "0914274729"),
        ],
      ),
    );
  }

  Widget details(String key, String value) {
    return Column(
      children: [
        Text(
          key,
          style: const TextStyle(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
