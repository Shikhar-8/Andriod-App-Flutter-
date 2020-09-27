import 'package:flutter/material.dart';
import 'package:hitechstudy23/AdminPage.dart';
import './SubjectPageHome2.dart';
// it is a foundation of list of subjects page.
// it is divided in two parts , second part is SubjectPageHome2
// this page will redirect to subject based on id clicked

class SubjectPageHome extends StatefulWidget {
  @override
  _SubjectPageHomeState createState() => _SubjectPageHomeState();
}
class _SubjectPageHomeState extends State<SubjectPageHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
        children: <Widget>[
           GradientAppBar("Subjects"),
           SubjectPageHome2(),
        ],
      ),
    );
  }
}

class GradientAppBar extends StatelessWidget {

  final String title;
  final double barHeight = 100.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return  Container(
      padding:  EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child:  Center(
        child:  Row(
          children: <Widget>[

            SizedBox(width: 70,),
            IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 35,
              color:Color(0xFF263AAA),
              onPressed: (){  Navigator.push(context,MaterialPageRoute(
                builder:  (context) => AdminPage(),
              ));

              },
            ),
            InkWell(
                child: Text(
                  "Subjects",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35, color: Color(0xFF263AAA),fontFamily: 'HelveticaNeue'),
                ),
                onTap:(){Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => AdminPage()));

                }
            ),
          ],
        ),
      ),
      color: Colors.transparent,

    );
  }
}

