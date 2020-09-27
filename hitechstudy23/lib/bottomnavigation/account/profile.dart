import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hitechstudy23/AdminPage.dart';
import 'package:hitechstudy23/AdminPageLayout.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
   return WillPopScope(
     onWillPop: () {return Future.value(false);},
     child: Scaffold(
       appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0,
       actions: <Widget>[
         Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget>[
             Text("Profile",style: TextStyle(color: Color(0xFF262AAA),fontSize: 30),),
             SizedBox(width: 100,),
             IconButton(
               icon: Icon(Icons.arrow_back),
               iconSize: 35,
               color: Color(0xFF262AAA),
               onPressed: (){
                 Navigator.push(context,MaterialPageRoute(
                   builder:  (context) => AdminPage(),
                 ));

               },
             ),
           ],
         ),

       ],
     ),
       body: Container(
         margin: const EdgeInsets.symmetric(
           vertical: 0.0,
           horizontal: 16.0,
         ),
         child: Stack(
           children: <Widget>[
             Container(
               margin: const EdgeInsets.fromLTRB(2, 90, 0, 20),
               height: 700,
               decoration: BoxDecoration(
                 color: Color(0xFF262AAA),
                 shape: BoxShape.rectangle,
                 borderRadius:  BorderRadius.circular(8.0),
                 boxShadow: <BoxShadow>[
                   BoxShadow(
                     color: Colors.black12,
                     blurRadius: 5.0,
                     offset:  Offset(0.0, 10.0),
                   ),
                 ],
               ),
               child: Container(
                 margin: EdgeInsets.symmetric(horizontal: 20) ,
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     SizedBox(height: 50,),
                     Text('    Shikhar Varshney',
                       style: TextStyle(
                         fontSize: 30,
                         fontWeight: FontWeight.normal,
                         fontFamily: 'HelveticaNeue',
                         color: Colors.white,
                       ),
                     ),
                     Divider(
                       height: 20,
                       thickness: 1.5,
                       color: Colors.white.withOpacity(0.3),
                       indent: 6,
                       endIndent: 6,
                     ),

                     Text(
                       'Email',
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.normal,
                         fontFamily: 'HelveticaNeue',
                         color: Colors.white,
                       ),
                     ),
                     SizedBox(
                       height: 6,
                     ),
                     Text(
                       'shikhar@gmail.com',
                       style: TextStyle(
                         fontSize: 23,
                         fontWeight: FontWeight.normal,
                         fontFamily: 'HelveticaNeue',
                         color: Colors.white,
                       ),
                     ),
                     Divider(
                       height: 20,
                       thickness: 1.5,
                       color: Colors.white.withOpacity(0.3),
                       indent: 6,
                       endIndent: 6,
                     ),
                     SizedBox(
                       height: 6,
                     ),
                     Text(
                       'Mobile number',
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.normal,
                         fontFamily: 'HelveticaNeue',
                         color: Colors.white,
                       ),
                     ),
                     SizedBox(
                       height: 6,
                     ),
                     Text(
                       '9865321245',
                       style: TextStyle(
                         fontSize: 22,
                         fontWeight: FontWeight.normal,
                         fontFamily: 'HelveticaNeue',
                         color: Colors.white,
                       ),
                     ),
                     Divider(
                       height: 20,
                       thickness: 1.5,
                       color: Colors.white.withOpacity(0.3),
                       indent: 6,
                       endIndent: 6,
                     ),
                     SizedBox(
                       height: 6,
                     ),
                     Text(
                       'Address',
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.normal,
                         fontFamily: 'HelveticaNeue',
                         color: Colors.white,
                       ),
                     ),
                     SizedBox(
                       height: 6,
                     ),
                     Text(
                       '224, Barbeque Street, California,United States',
                       style: TextStyle(
                         fontSize: 22,
                         fontWeight: FontWeight.normal,
                         fontFamily: 'HelveticaNeue',
                         color: Colors.white,
                       ),
                     ),
                     Divider(
                       height: 20,
                       thickness: 1.5,
                       color: Colors.white.withOpacity(0.3),
                       indent: 6,
                       endIndent: 6,
                     ),
                     SizedBox(
                       height: 6,
                     ),
                     Text(
                       'Institute',
                       style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.normal,
                         fontFamily: 'HelveticaNeue',
                         color: Colors.white,
                       ),
                     ),
                     SizedBox(
                       height: 6,
                     ),
                     Text(
                       'Harvard Edu , Boston , United State',
                       style: TextStyle(
                         fontSize: 22,
                         fontWeight: FontWeight.normal,
                         fontFamily: 'HelveticaNeue',
                         color: Colors.white,
                       ),
                     ),






                   ],
                 ),
               ),

             ),
             Container(
                 margin:  EdgeInsets.symmetric(
                     vertical: 15.0,horizontal:105
                 ),
                   child:  Image.asset('assets/finalimage.png',height: 150,width: 100,),







             ),

           ],
         ),
       ),





     ),
   );
  }
}