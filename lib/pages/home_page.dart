// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tes/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('Consume API'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                Colors.purple,
                Colors.blue,
              ])),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: margin,
              vertical: 14,
            ),
            child: Text('New Arrival',
                style: primaryTextStyle.copyWith(
                  fontSize: 22,
                )),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return productCard();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget productCard() {
    return Container(
      margin: EdgeInsets.only(left: margin, right: margin, bottom: margin),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white,
                    Colors.blue,
                  ]),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Football',
                  style: primaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: normal, color: Colors.grey),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Predator 20.3 Firm Ground',
                  style: primaryTextStyle,
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$555',
                  style: priceTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
