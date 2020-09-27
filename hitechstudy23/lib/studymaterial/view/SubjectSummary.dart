import 'package:flutter/material.dart';
import 'package:hitechstudy23/studymaterial/model/Subjects.dart';
import 'package:hitechstudy23/studymaterial/view/SubjectDetail.dart';
import 'package:hitechstudy23/studymaterial/view/text_style.dart';

// this is the code which shows data like name of subject, total test on card of subject   on the list of subjects page

class BoxDetail extends StatelessWidget {

  final Student student;
  final bool horizontal;

  BoxDetail(this.student, {this.horizontal = true});

  BoxDetail.vertical(this.student): horizontal = false;


  @override
  Widget build(BuildContext context) {

    final studentThumbnail =  Container(
      margin:  EdgeInsets.symmetric(
          vertical: 22.0
      ),
      alignment: horizontal ? FractionalOffset.centerLeft : FractionalOffset.center,
      child:  Hero(
        tag: "student-hero-${student.id}",
        child:  Image(
          image:  AssetImage(student.image),
          height: 80.0,
          width: 80.0,
        ),
      ),
    );





    final studentCardContent =  Container(
      margin:  EdgeInsets.fromLTRB(horizontal ? 56.0 : 16.0, horizontal ? 16.0 : 42.0, 16.0, 16.0),
      constraints:  BoxConstraints.expand(),
      child:  Column(
        crossAxisAlignment: horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        children: <Widget>[
           Container(height: 2.0),
           Text(student.name, style: Style.titleTextStyle),
          SizedBox(height: 5,),
          Divider(height: 5,
            thickness: 1.5,
            color: Colors.white.withOpacity(0.3),
            indent: 6,
            endIndent: 6,),
           Container(height: 10.0),
           Text(student.content, style: Style.commonTextStyle),
           Text(student.name_class, style: Style.commonTextStyle),
        ],
      ),
    );


    final studentCard =  Container(
      child: studentCardContent,
      height: horizontal ? 140.0 : 154.0,
      margin: horizontal
          ?  EdgeInsets.only(left: 38.0)
          :  EdgeInsets.only(top: 72.0),
      decoration: BoxDecoration(
        color: Color(0xFF262AAA),
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
    );


    return  GestureDetector(
        onTap: horizontal
            ? () => Navigator.of(context).push(
           PageRouteBuilder(
            pageBuilder: (_, __, ___) =>  DetailPage(student),
            transitionsBuilder: (context, animation, secondaryAnimation, child) =>
             FadeTransition(opacity: animation, child: child),
          ) ,
        )
            : null,
        child:  Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          child:  Stack(
            children: <Widget>[
              studentCard,
              studentThumbnail,
            ],
          ),
        )
    );
  }
}