import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilearn/right.dart';

import 'card.dart';
import 'left.dart';
import 'leftbottom.dart';

class CardUi extends StatefulWidget {
  @override
  _CardUiState createState() => _CardUiState();
}

class _CardUiState extends State<CardUi> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return Desktop();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return Desktop();
      } else {
        return Mobile();
      }
    });
  }
}

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          //direction: Axis.vertical,
          // MediaQuery.of(context).size.width / 2
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LeftUi(),
                  ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Cards(),
                        ],
                      );
                    },
                  ),
                  Bottom(),
                ],
              ),
            ),
            Container(
              height: 700,
              width: 2.0,
              color: Colors.orangeAccent,
            ),
            SizedBox(width: 40,),
            Expanded(child: TextF()),
          ],
        ),
      ),

    );
  }
}


class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LeftUi(),
            ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Cards(),
                  ],
                );
              },
            ),
            Bottom(),
            TextF(),
          ],
        ),



      ),

    );
  }
}