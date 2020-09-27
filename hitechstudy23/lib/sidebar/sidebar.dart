import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hitechstudy23/bottomnavigation/account/profile.dart';
import 'package:rxdart/rxdart.dart';
import './navigation_bloc.dart';
import 'package:hitechstudy23/drawer/Demo.dart';
import 'package:hitechstudy23/drawer/Help.dart';
import 'package:hitechstudy23/drawer/HowItWorks.dart';
import 'package:hitechstudy23/drawer/Privacy.dart';
import 'package:hitechstudy23/drawer/Rules.dart';
import 'package:hitechstudy23/drawer/Share.dart';

//
class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}
// code of sidebar is written here
class _SideDrawerState extends State<SideDrawer> with SingleTickerProviderStateMixin<SideDrawer> {
  AnimationController _animationController;
  StreamController<bool> isSidebarOpenedStreamController;
  Stream<bool> isSidebarOpenedStream;
  StreamSink<bool> isSidebarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 300);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSideBarOpenedAsync.data ? 0 : -screenWidth,
          right: isSideBarOpenedAsync.data ? 0 : screenWidth - 45,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  color: const Color(0xFF262AAA),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                      ListTile(
                        title: Text(
                          "Shikhar",
                          style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(
                          "shikhar@gmail.com",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        ),
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.perm_identity,
                            color: Colors.white,
                          ),
                          radius: 30,
                        ),
                        onTap: (){

                        },
                      ),
                      Divider(
                        height: 64,
                        thickness: 0.5,
                        color: Colors.white.withOpacity(0.3),
                        indent: 32,
                        endIndent: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.share,
                              color: Colors.cyan,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                                child: Text(
                                  "Share",
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22, color: Colors.white),
                                ),
                                onTap:(){Navigator.of(context).pop();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) => Share()));

                                }
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.work,
                              color: Colors.cyan,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                                child: Text(
                                  "How It Works",
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22, color: Colors.white),
                                ),
                                onTap:(){Navigator.of(context).pop();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) => HowItWorks()));

                                }
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.help,
                              color: Colors.cyan,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                                child: Text(
                                  "Help",
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22, color: Colors.white),
                                ),
                                onTap:(){Navigator.of(context).pop();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) => Help()));

                                }
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.track_changes,
                              color: Colors.cyan,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                                child: Text(
                                  "Privacy",
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22, color: Colors.white),
                                ),
                                onTap:(){Navigator.of(context).pop();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) => Privacy()));

                                }
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.receipt,
                              color: Colors.cyan,
                              size: 30,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                                child: Text(
                                  "Terms and Condition",
                                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22, color: Colors.white),
                                ),
                                onTap:(){Navigator.of(context).pop();
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) => Rules()));

                                }
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 64,
                        thickness: 0.5,
                        color: Colors.white.withOpacity(0.3),
                        indent: 32,
                        endIndent: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                          width: 250,
                          child: RaisedButton(
                            elevation: 5.0,
                            onPressed: () {Navigator.of(context).pop();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) => Demo()));},

                            padding: EdgeInsets.all(15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            color: Colors.white,
                            child: Center(
                              child:
                              Text(
                                'Request For Demo',
                                style: TextStyle(
                                  color: Colors.blue[600],
                                  letterSpacing: 2.5,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'OpenSans',
                                ),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.9),
                child: GestureDetector(
                  onTap: () {
                    onIconPressed();
                  },
                  child: ClipPath(
                    clipper: CustomMenuClipper(),
                    child: Container(
                      width: 35,
                      height: 110,
                        color: Color(0xFF262AAA),
                      alignment: Alignment.centerLeft,
                      child: AnimatedIcon(
                        progress: _animationController.view,
                        icon: AnimatedIcons.menu_close,
                        color: Color(0xFF1BB5FD),
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}