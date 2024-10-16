import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeColors.headerGradient
            ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 80, 16, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text('\$ 1000,00',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                Text.rich(TextSpan(
                  text: '\$ ',
                  children: [
                    TextSpan(
                      text: '1000,00',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )),
                const Text(
                  'Balanco disponivel',
                ),
              ],
            ),
            const Icon(
              Icons.account_circle,
              size: 42,
            )
          ],
        ),
      ),
    );
  }
}
