import 'package:flutter/material.dart';

class Fixed_Buttom extends StatelessWidget {
  const Fixed_Buttom({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
          child: IconButton(
              icon: const Icon(Icons.home, color: Colors.grey, size: 45),
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
          child: IconButton(
              icon: const Icon(Icons.account_circle_outlined,
                  color: Colors.grey, size: 45),
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30, left: 30, bottom: 20),
          child: IconButton(
              icon: const Icon(Icons.favorite, color: Colors.grey, size: 45),
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30, bottom: 20),
          child: IconButton(
              icon:
                  const Icon(Icons.shopping_cart, color: Colors.grey, size: 45),
              onPressed: () {}),
        )
      ],
    );
  }
}
