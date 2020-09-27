import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hitechstudy23/sidebar/navigation_bloc.dart';
import 'package:hitechstudy23/studymaterial/view/SubjectPageHome.dart';
import './Inbox.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>with NavigationStates{

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
                    icon: Icon(Icons.notifications),
                    iconSize: 35,
                    color: Color(0xFF262AAA),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
    builder:  (context) => Inbox(),
  ));

                    },
                  ),



                ],
              ),

            ],
           ),
      body:Column(
        children: <Widget>[
          Container(
            padding: new EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: _buildHelloWidget(context: context, name: 'Shikhar'),
                ),

                Divider(
                  height: 64,
                  thickness: 1.5,
                  color: Color(0xFF263AAA).withOpacity(0.3),
                  indent: 30,
                  endIndent: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: new EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                  height:85,
                  decoration: BoxDecoration(
                    color: Color(0xFF263AAA),
                    shape: BoxShape.rectangle,
                    borderRadius:  BorderRadius.circular(20.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10.0,
                        offset:  Offset(0.0, 10.0),
                      ),
                    ],
                  ),
                  child: (
                      ListTile(
                        title:  InkWell(
                            child: Text(
                              "View Course",
                              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 30, color: Colors.white ,fontFamily: 'HelveticaNeue'),
                            ),
                            onTap:(){Navigator.of(context).pop();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => SubjectPageHome()));

                            }
                        ),




                        trailing:InkResponse(
                          onTap: (){Navigator.push(context,MaterialPageRoute(
                            builder:  (context) => SubjectPageHome(),
                          ));

                          },

                          child: Icon(
                            Icons.school,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),

                      )),
                ),



              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildHelloWidget(
      {@required BuildContext context, @required String name}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Hello',
          style: Theme.of(context).textTheme.display1.copyWith(
            color: Colors.black,
            fontFamily: 'HelveticaNeue',
            fontWeight: FontWeight.w100,
            fontSize: 35,
          ),
        ),
        Text(
          '$name,',
          style: Theme.of(context).textTheme.display2.copyWith(
            color: Colors.black,
            fontFamily: 'HelveticaNeue',
            fontWeight: FontWeight.w300,
            fontSize: 50,
          ),
        ),
      ],
    );
  }

}