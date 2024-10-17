import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ColorDot(color: ThemeColors.recentActivity['spent']),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Saida'),
                    Text('\$ 100,00', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                )
              ],
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: ColorDot(color: ThemeColors.recentActivity['income']),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text('Entrada'),
                  Text('\$ 200,00', style: Theme.of(context).textTheme.bodyLarge),
                ],
              )
            ],)
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: Text('Limite de gastos: \$ 500,00', style: Theme.of(context).textTheme.bodyMedium),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: const LinearProgressIndicator(
            value: 0.5,
            minHeight: 8),
        ),
        const Padding(padding: EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision()
        ),
        Text('Saldo disponível: \$ 400,00', style: Theme.of(context).textTheme.bodyMedium),
        TextButton(onPressed: (){}, child: const Text('Ver extrato', style: TextStyle(fontSize: 16),))
      ],
    );
  }
}