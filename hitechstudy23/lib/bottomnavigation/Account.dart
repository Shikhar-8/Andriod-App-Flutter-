import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hitechstudy23/AdminPageLayout.dart';
import 'package:hitechstudy23/bottomnavigation/account/changePassword.dart';
import 'package:hitechstudy23/sidebar/sidebar.dart';
import './account/profile.dart';
import './Inbox.dart';
class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}
class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                Container(

                  child: Column(
                    children: <Widget>[

                      Text(
                        'Account',
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
                      ListTile(
                        title: InkWell(
                            child: Text(
                              "View Profile",
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
                            ),
                            onTap:(){Navigator.of(context).pop();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Profile()));

                            }
                        ),


                        leading:  Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFF263AAA),
                          ),
                          child: Icon(
                            Icons.perm_identity,
                            size: 25.0,
                            color: Colors.white,
                          ),

                        ),


                        trailing:InkResponse(
                          onTap: (){
                            Navigator.of(context).pop();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Profile()));

                          },

                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF263AAA),
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ListTile(
                        title: InkWell(
                            child: Text(
                              "Change Password",
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22, color: Colors.black),
                            ),
                            onTap:(){Navigator.of(context).pop();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => ChangePassword()));

                            }
                        ),


                        leading:  Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFF263AAA),
                          ),
                          child: Icon(
                            Icons.track_changes,
                            size: 25.0,
                            color: Colors.white,
                          ),

                        ),


                        trailing:InkResponse(
                          onTap: (){
                            Navigator.of(context).pop();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => ChangePassword()));


                          },

                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF263AAA),
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ListTile(
                        title: Text(
                          "Change Language",
                          style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
                        ),

                        leading:  Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFF263AAA),
                          ),
                          child: Icon(
                            Icons.language,
                            size: 25.0,
                            color: Colors.white,
                          ),

                        ),


                        trailing:InkResponse(
                          onTap: (){

                          },

                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF263AAA),
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ListTile(
                        title: Text(
                          "Help",
                          style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
                        ),

                        leading:  Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFF263AAA),
                          ),
                          child: Icon(
                            Icons.help,
                            size: 25.0,
                            color: Colors.white,
                          ),

                        ),


                        trailing:InkResponse(
                          onTap: (){

                          },

                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF263AAA),
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 8,
                      ),

                      Divider(
                        height: 64,
                        thickness: 1.5,
                        color: Color(0xFF263AAA).withOpacity(0.3),
                        indent: 32,
                        endIndent: 32,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        width: 250,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed: () {},

                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          color: Color(0xFF263AAA),
                          child: Center(
                            child:
                            Text(
                              'Log Out',
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 2.5,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'HelveticaNeue',
                              ),
                            ),

                          ),
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
