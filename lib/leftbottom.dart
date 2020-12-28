import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: 100,
              height: 120,
              child: FittedBox(
                child: Image(
                  image: NetworkImage(
                      'https://fileinfo.com/img/ss/lg/jpg_44.jpg'),
                ), //Image.asset('foo.png'),
                fit: BoxFit.fill,
              ),
            ),
            Text('Shipping Free'),
          ],
        ),
        SizedBox(height: 20,),
        Text('Total \$ 141.55',style: TextStyle(
            fontSize: 18,
            fontFamily: "Times",
            fontWeight: FontWeight.bold,
            color: Colors.blue)),

      ],
    );

  }
}