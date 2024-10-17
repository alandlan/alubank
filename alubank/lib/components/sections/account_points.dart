import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCard(boxContent: _AccountPointContent())
        ],
      ),
    );
  }
}

class _AccountPointContent extends StatelessWidget {
  const _AccountPointContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pontos Totais'),
        Text('3000', style: Theme.of(context).textTheme.bodyLarge),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        Text('Objetivos', style: Theme.of(context).textTheme.titleMedium),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ColorDot(color: ThemeColors.recentActivity['delivery']),
            ),
            Text('Entrega gratis: 15000pts', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ColorDot(color: ThemeColors.recentActivity['streaming']),
            ),
            Text('1 mes de streaming: 30000pts', style: Theme.of(context).textTheme.bodyMedium),
          ],
        )
      ],
    );
  }
}