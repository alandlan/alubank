import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;
  const BoxCard({super.key, required this.boxContent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: kElevationToShadow[3],

      ),
      child: boxContent,
    );
  }
}