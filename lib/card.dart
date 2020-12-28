import 'package:flutter/material.dart';
import 'package:uilearn/cardui.dart';


class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0.0,
      borderOnForeground: false,
      semanticContainer: false,
      child: Data(),
    );
  }
}
class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            direction: Axis.horizontal,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Men\'s Lil Sleeve'),
                  Text('Color   blue'),
                  Text('Size     XL'),
                  Text('Q.       1'),
                  Text('Total \$ 141.55',style: TextStyle(
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
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: 200,
            height: 2.0,
            color: Colors.orangeAccent,
          ),
        ],
      ),
    );
  }
}