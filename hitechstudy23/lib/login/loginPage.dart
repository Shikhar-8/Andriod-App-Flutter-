import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './constants.dart';
import './SignUpPage.dart';
import 'package:hitechstudy23/AdminPageLayout.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _isCorrect=false;
  bool _rememberMe = false;
  TextEditingController emailController =  TextEditingController();
  TextEditingController passwordController =  TextEditingController();

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(height: 12.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,

          height: 60.0,
          child: TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter your Email',
              hintStyle: kHintTextStyle,

            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: kLabelStyle,
        ),

        SizedBox(height: 12.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            controller: passwordController,
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Enter your Password',
              hintStyle: kHintTextStyle,


            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password Button Pressed'),
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'Forgot Password?',
          style: kLabelStyle,
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return Container(
      height: 20.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: kLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(context,MaterialPageRoute(
            builder:  (context) => AdminPageLayout(),
          ));

          //signIn(emailController.text, passwordController.text);
      },

        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xFF527DAA),
            letterSpacing: 1.5,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildSignupBtn() {
    return GestureDetector(

      onTap: (){
    Navigator.push(context,MaterialPageRoute(
    builder:  (context) => SignUpPage(),
    ));
    },
      child: RichText(

        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[

              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.blue,
              ),
              Container(
                height: double.infinity,

                child: SingleChildScrollView(

                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 140.0,
                  ),

                  child:

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                        Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'OpenSans',
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),


                        SizedBox(
                          height: 30.0,
                        ),
                        _buildEmailTF(),
                        _buildPasswordTF(),
                        _buildForgotPasswordBtn(),
                        _buildRememberMeCheckbox(),
                        _buildLoginBtn(),
                        _buildSignupBtn(),
                      ],
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
//  signIn(String email, pass) async {
//    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//    Map data = {
//      'email': email,
//      'password': pass
//    };
//    var jsonResponse = null;
//    var response = await http.post("YOUR_BASE_URL", body: data);
//    if(response.statusCode == 200) {
//      jsonResponse = json.decode(response.body);
//      if(jsonResponse != null) {
//
//        sharedPreferences.setString("token", jsonResponse['token']);
//        Navigator.push(context,MaterialPageRoute(
//          builder:  (context) => AdminPage(),
//        ));
//
//      }
//    }
//    else {
////
////      print(response.body);
//    incorrect(context);
//    }
//  }
//  void incorrect(BuildContext context)
//  {
//    var alertDialog = AlertDialog(
//      title: Text("Please Note"),
//      content: Text("You have entered wrong Username Or password"),
//    );
//    showDialog(context: context,
//    builder: (BuildContext context){
//      return alertDialog;
//    });
//  }
}