import 'package:flutter/material.dart';



class LeftUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('2 Items in your Cart',textAlign: TextAlign.start,),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          width: 125,
          height: 2.0,
          color: Colors.orangeAccent,
        ),

      ],
    );
  }
}
