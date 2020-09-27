
import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import './AdminPage.dart';
import './bottomnavigation/Home.dart';
import './bottomnavigation/Inbox.dart';
import './drawer/Privacy.dart';
import './bottomnavigation/Account.dart';
import './drawer/Demo.dart';
import './drawer/Help.dart';
import './drawer/HowItWorks.dart';
import './drawer/Rules.dart';
import './drawer/Share.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hitechstudy23/sidebar/navigation_bloc.dart';

class AdminPage extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    return AdminPageState();
  }
}
// this is my HOME PAGE of all
class AdminPageState extends State<AdminPage> {
  int _selectedTab = 0;
  final _pageOptions = [
    HomePage(),
    Inbox(),
    Account(),
  ];
  SharedPreferences sharedPreferences;

//  @override
//  void initState() {
//    super.initState();
//    checkLoginStatus();
//  }
//  checkLoginStatus() async {
//    sharedPreferences = await SharedPreferences.getInstance();
//    if(sharedPreferences.getString("token") == null) {
//      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginScreen()), (Route<dynamic> route) => false);
//    }
//  }



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _backbutton,
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//          primaryColor: TargetPlatform == TargetPlatform.iOS ? Colors.grey:null
//        ),
          home:
                  Scaffold(
//                appBar: AppBar(
//                  backgroundColor: Colors.blue[600],
//                  actions: <Widget>[
//                    IconButton(
//                      icon: Icon(
//                        Icons.notifications,
//                        color: Colors.white,
//                      ),
//                      onPressed: () {
//                        // do something
//                      },
//                    )
//                  ],
//                ),
//
                    body: _pageOptions[_selectedTab],//this is a variable used to store which page is clicked
                    bottomNavigationBar: CircleBottomNavigation(
                      barHeight: 60,
                      circleSize: 45,
                      circleColor: Color(0xFF263AAA),
                      activeIconColor: Colors.white ,
                      inactiveIconColor: Color(0xFF263AAA),
                      textColor: Colors.black,
                      arcHeight:0,
                      arcWidth:0,
                      hasElevationShadows: false,
                      initialSelection: _selectedTab,
                      tabs: [
                        TabData(
                          icon: Icons.home,
                          title: 'HomePage',
                          fontSize: 15,
                          fontWeight: FontWeight.w700
                          ,
                        ),
                        TabData(
                          icon: Icons.receipt,

                          title: 'Inbox',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        TabData(
                          icon: Icons.account_circle,

                          title: 'Account',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                      onTabChangedListener: (index) => setState(() => _selectedTab = index),


                    )
//                BottomNavigationBar(
//                  backgroundColor: Colors.white,
//                  currentIndex: _selectedTab,
//                  selectedFontSize: 15,
//                  selectedItemColor:  Color(0xFF263AAA),
//                  unselectedItemColor: Colors.cyan,
//                  unselectedFontSize: 12,
//                  onTap: (int index) { // it will show the selected tab
//                    setState(() {
//                      _selectedTab = index;
//                    });
//                  },
//                  items: [
//                    BottomNavigationBarItem(
//                      icon: Icon(Icons.home,size: 25,),
//                      title: Text("Home",style:TextStyle(
//                        fontWeight: FontWeight.w700,
//                      ),),
//                    ),
//                    BottomNavigationBarItem(
//                      icon: Icon(Icons.receipt),
//                      title: Text('Inbox'),
//                    ),
//                    BottomNavigationBarItem(
//                      icon: Icon(Icons.account_circle),
//                      title: Text('Account'),
//                    ),
//                  ],
//                ),
                  ),

          ),
    );
  }
  Future<bool>  _backbutton (){
    return showDialog(
        context:context,
        builder:(context)=> AlertDialog(
            title: Text("Alert",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,fontFamily: 'HelveticaNeue'),),
                elevation: 24,

          content: (Text("Kindle use OnScreen Back Button located  Top Right",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontFamily: 'OpesSans'),)),
          actions: <Widget>[
            Container(
              color: Color(0xFF262AAA),
              child: FlatButton(
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0),),
                child: Text("OK",style: TextStyle(color: Colors.white,fontSize: 18),),

                onPressed: ()=>Navigator.pop(context,false),

              ),
            ),

          ],
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15.0),),

        )
    );
        }




}

