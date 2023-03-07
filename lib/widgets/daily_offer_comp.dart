import 'package:flutter/material.dart';
import 'package:foodpanda/utils/network_images.dart';

class DailyOfferTabs extends StatelessWidget {
  const DailyOfferTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          bannerImg,
          width: 140,
          height: 180,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
