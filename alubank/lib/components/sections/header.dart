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
            colors: [
              Color.fromRGBO(103, 99, 232, 1),
              Color.fromRGBO(155, 105, 254, 1),
              Color.fromRGBO(195, 107, 255, 1)
            ]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: const Padding(
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: '1000,00',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
                Text(
                  'Balanco disponivel',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Icon(
              Icons.account_circle,
              size: 42,
            )
          ],
        ),
      ),
    );
  }
}
