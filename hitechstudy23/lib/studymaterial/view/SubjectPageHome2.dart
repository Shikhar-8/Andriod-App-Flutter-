import 'package:flutter/material.dart';
import 'package:hitechstudy23/studymaterial/model/Subjects.dart';
import 'package:hitechstudy23/studymaterial/view/SubjectSummary.dart';
// this page will redirect to subject based on id clicked
// also this page also shows list of subjects 

class SubjectPageHome2 extends StatefulWidget {
  @override
  _SubjectPageHome2State createState() => _SubjectPageHome2State();
}
class _SubjectPageHome2State extends State<SubjectPageHome2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:  Container(
        color:  Colors.blue[100],
        child:  CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: false,
          slivers: <Widget>[
             SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              sliver:  SliverList(
                delegate:  SliverChildBuilderDelegate(// now ek box ke andar kya hai vo yaha hoga
                      (context, index) =>  BoxDetail(students[index]),
                  childCount: students.length,
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
  }
