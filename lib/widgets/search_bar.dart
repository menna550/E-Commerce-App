import 'package:flutter/material.dart';

class search_bar extends StatelessWidget {
  search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * (42/812),
      width: MediaQuery.of(context).size.width ,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: TextField(
        style: const TextStyle(),
        onSubmitted: (value) {},
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            //   enabledBorder: OutlineInputBorder(),
            //       focusedBorder: OutlineInputBorder(),

            // labelText: 'Search',
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder()),
      ),
    );
  }
}
