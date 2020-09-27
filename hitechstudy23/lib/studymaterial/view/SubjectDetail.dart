import 'package:flutter/material.dart';
import 'package:hitechstudy23/studymaterial/model/Subjects.dart';
import 'package:hitechstudy23/studymaterial/view/text_style.dart';
import 'package:hitechstudy23/studymaterial/view/SubjectSummary.dart';
import './SubjectPageHome.dart';
// this is the page which will show subject detail and list of chapters
class DetailPage extends StatelessWidget {

  final Student student;

  DetailPage(this.student);

  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    return  WillPopScope(
      onWillPop: () {return Future.value(false);},
      child: Scaffold(

        body:  Container(
          constraints:  BoxConstraints.expand(),
          color:  Colors.blue[100],
          child:  Stack (
            children: <Widget>[
              _getBackground(),
              _getGradient(),
              Container(
                child: new ListView(
                  padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
                  children: <Widget>[
                    new BoxDetail(student,
                      horizontal: false,
                    ), //this is for the box which is coming from previous page
                    new Container(
                      padding: new EdgeInsets.symmetric(horizontal: 32.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Chapters",
                            style: Style.headerTextStyle,),
                          SizedBox(height: 20,),
                          Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              shape: BoxShape.rectangle,
                              borderRadius:  BorderRadius.circular(8.0),
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
                                  title: Text(
                                    student.chapter1,
                                    style: TextStyle(color: Color(0xFF263AAA), fontSize: 25, fontWeight: FontWeight.w600),
                                  ),

                                  subtitle: Text("2 Video Lectures | 1 Quiz",style: TextStyle(
                                    color: Color(0xFF263AAA),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18
                                  ),),


                                  trailing:InkResponse(
                                    onTap: (){

                                    },

                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF263AAA),
                                      size: 40,
                                    ),
                                  ),

                                )),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              shape: BoxShape.rectangle,
                              borderRadius:  BorderRadius.circular(8.0),
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
                                  title: Text(
                                    student.chapter2,
                                    style: TextStyle(color: Color(0xFF263AAA), fontSize: 25, fontWeight: FontWeight.w600),
                                  ),

                                  subtitle: Text("1 Video Lectures | 2 Test",style: TextStyle(
                                      color: Color(0xFF263AAA),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18
                                  ),),


                                  trailing:InkResponse(
                                    onTap: (){

                                    },

                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF263AAA),
                                      size: 40,
                                    ),
                                  ),

                                )),
                          ),
                          SizedBox(height: 15,),
                          Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              shape: BoxShape.rectangle,
                              borderRadius:  BorderRadius.circular(8.0),
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
                                  title: Text(
                                    student.chapter3,
                                    style: TextStyle(color: Color(0xFF263AAA), fontSize: 25, fontWeight: FontWeight.w600),
                                  ),

                                  subtitle: Text("5 Video Lectures | 1 Quiz",style: TextStyle(
                                      color: Color(0xFF263AAA),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18
                                  ),),


                                  trailing:InkResponse(
                                    onTap: (){

                                    },

                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Color(0xFF263AAA),
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
              ),
              _getToolbar(context),
            ],
          ),
        ),
      ),
    );
  }

  Container _getBackground () {
    return  Container(
      child:  Image.asset(student.picture,
        fit: BoxFit.cover,
        height: 300.0,
      ),
      constraints: new BoxConstraints.expand(height: 295.0),
    );
  }

  Container _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color>[
            new Color(0x00736AB7),
            new Color(0xFF736AB7)
          ],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Container _getToolbar(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Container(
      width: screenWidth,
      child: Align(
       alignment: Alignment(0.9,-0.5),
        child: Column(
          children: <Widget>[
            Text("Go Back",style: TextStyle(
              color: Colors.black,fontSize: 20, fontWeight: FontWeight.w500
            ),),
            IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 35,
              color: Colors.black,
              onPressed: (){  Navigator.push(context,MaterialPageRoute(
                builder:  (context) => SubjectPageHome(),
              ));

              },
            ),
          ],
        ),
      ),
    );
  }
}