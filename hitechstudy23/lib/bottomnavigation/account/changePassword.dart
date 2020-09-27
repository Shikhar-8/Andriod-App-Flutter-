import 'package:flutter/material.dart';
import 'package:hitechstudy23/AdminPage.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}
class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
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
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              height: 500,
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
                      'Change Password',
                      style: TextStyle(
                        color: Color(0xFF262AAA),
                        fontFamily: 'HelveticaNeue',
                        fontSize: 32.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    SizedBox(
                      height: 15.0,
                    ),
                    Divider(
                      height: 50,
                      thickness: 1.5,
                      color: Color(0xFF263AAA),
                      indent: 12,
                      endIndent: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text(
                          'New Password',
                          style: TextStyle(
                            color: Color(0xFF262AAA),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
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
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Enter New Password',
                              hintStyle: TextStyle(
                                color: Colors.white,
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
                          'Confirm Password',
                          style: TextStyle(
                            color: Color(0xFF262AAA),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                        SizedBox(height: 12.0),
                        Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
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
                            keyboardType: TextInputType.visiblePassword,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                              hintText: 'Re-Enter New Password',
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontFamily: 'OpenSans',
                              ),

                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 80,
                      thickness: 1.5,
                      color: Color(0xFF263AAA),
                      indent: 12,
                      endIndent: 12,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 40),
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
                        color: Color(0xFF262AAA),
                        child: Text(
                          'Update',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 0.5,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSans',
                          ),
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),
          )
        ],
      ),

    );
  }



}
