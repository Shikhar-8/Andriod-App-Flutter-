import 'package:flutter/material.dart';
import 'package:hitechstudy23/AdminPage.dart';

class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}
class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF263AAA),
        elevation: 0,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 35,
                color: Colors.white,
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
      body: Stack(
        children: <Widget>[
// used stack so that pure page ka coloe blue rahe na ki aadhe page ka
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFF263AAA),
          ),
           Container(

              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 35.0,
                  vertical: 40.0,
                ),

                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Text(
                      'Fill the Form',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'HelveticaNeue',
                        fontSize: 32.5,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),
                    Divider(
                      height: 40,
                      thickness: 2.5,
                      color: Colors.cyan[200],
                      indent: 12,
                      endIndent: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text(
                          'Name',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6.0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),

                          height: 60.0,
                          child: TextField(
                            //controller: emailController,
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Enter Name',
                              hintStyle: TextStyle(
                                color: Colors.grey[500],
                                fontFamily: 'OpenSans',
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text(
                          'Mobile Number',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6.0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),

                          height: 60.0,
                          child: TextField(
                            //controller: emailController,
                            keyboardType: TextInputType.phone,
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Enter Name',
                              hintStyle: TextStyle(
                                color: Colors.grey[500],
                                fontFamily: 'OpenSans',
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6.0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),

                          height: 60.0,
                          child: TextField(
                            //controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Enter Name',
                              hintStyle: TextStyle(
                                color: Colors.grey[500],
                                fontFamily: 'OpenSans',
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 75,
                      thickness: 2.5,
                      color: Colors.cyan[200],
                      indent: 12,
                      endIndent: 12,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 40),
                      width: double.infinity,
                      child: RaisedButton(
                        elevation: 5.0,
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(
                            builder:  (context) => AdminPage(),
                          ));

                          //signIn(emailController.text, passwordController.text);
                        },

                        padding: EdgeInsets.symmetric(vertical: 15,),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        child: Text(
                          'REQUEST',
                          style: TextStyle(
                            color: Color(0xFF263AAA),
                            letterSpacing: 1.5,
                            fontSize: 22.0,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'HelveticaNeue',
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),

        ],
      ),




    );
  }



}
