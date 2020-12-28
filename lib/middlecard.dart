import 'package:flutter/material.dart';


class Middle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1200),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Men\'s Lil Sleeve'),
                  Text('Color   blue'),
                  Text('Size     XL'),
                  Text('Q.       1'),
                  SizedBox(height: 20,),
                  Text('\$ 141.55',style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Times",
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),

                ],
              ),
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
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10,),
            width: 200,
            height: 2.0,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}
