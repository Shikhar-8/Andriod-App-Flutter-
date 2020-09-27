import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}
class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(width: 250,),

              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 35,
                color: Color(0xFF262AAA),
                onPressed: (){
                  Navigator.pop(context);

                },
              ),
            ],
          ),

        ],
      ),
      body:Column(
        children: <Widget>[

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                Container(

                  child: Column(
                    children: <Widget>[

                      Text(
                        'Inbox',
                        style: TextStyle(
                          fontSize: 55.0,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'HelveticaNeue',
                          color: Colors.black,
                        ),
                      ),
                      Divider(
                        height: 64,
                        thickness: 1.5,
                        color: Color(0xFF263AAA).withOpacity(0.3),
                        indent: 32,
                        endIndent: 32,
                      ),
                      Text(
                        'No New Notifications',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'OpenSans',
                          color: Colors.black,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            //padding: EdgeInsets.symmetric(vertical: ),

          ),
        ],
      ),
    );

  }


}
