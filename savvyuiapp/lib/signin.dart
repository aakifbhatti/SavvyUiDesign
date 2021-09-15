import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:savvyuiapp/enterexitroute.dart';
import 'package:savvyuiapp/signin.dart';
import 'package:savvyuiapp/signup.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  _signinState createState() => _signinState();
}

class _signinState extends State<signin> {
  bool isBuyer = true;

  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  late Color color;

  @override
  Widget build(BuildContext context) {
    _focusNode1.addListener(() {
      setState(() {
        color = _focusNode1.hasFocus ? Colors.blue : Colors.red;
      });
    });
    _focusNode2.addListener(() {
      setState(() {
        color = _focusNode1.hasFocus ? Colors.blue : Colors.red;
      });
    });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //LOGO
          Positioned(
            left: 0,
            right: 0,
            top: -500.0,
            bottom: 0.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    scale: 2.2, image: AssetImage('assets/logo.png')),
              ),
            ),
          ),
          Positioned(
            child: Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 225.0, 0.0, 0.0),
                child: Center(
                  child: Column(
                    children: [
                      // tabs for buyer and seller
                      TabsSelector(),
                      SizedBox(
                        height: 30.0,
                      ),
                      buyerForm(),
                      SizedBox(
                        height: 20.0,
                      ),
                      //Button sign In
                      Button(),
                      //Socaial icons
                      SizedBox(
                        height: 30.0,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Text("Or sign in with",
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                )),
                            SizedBox(height: 12.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                //Facebook button
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    minimumSize: Size(8, 9),
                                    backgroundColor: Color(0x3fc4c4c4),
                                    primary: Color(0xff000000),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.facebook_rounded,
                                        color: Colors.blue[900],
                                      ),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        'Facebook',
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.normal),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                //Gmail Button
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    minimumSize: Size(100, 16),
                                    backgroundColor: Color(0x3fc4c4c4),
                                    primary: Color(0xff000000),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/google-icon.png',
                                          scale: 2.2),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        'Google',
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            fontStyle: FontStyle.normal),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 65.0),
                            Text(
                              'New to Savvy?',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    EnterExitRoute(
                                        exitPage: signin(),
                                        enterPage: signup()));
                              },
                              child: RichText(
                                  text: new TextSpan(children: [
                                new TextSpan(
                                    text: "Sign up here as ",
                                    style: GoogleFonts.poppins(
                                      color: Color(0xff000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    )),
                                new TextSpan(
                                    text: "freelancer",
                                    style: GoogleFonts.poppins(
                                      color: Color(0xff8341c5),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    )),
                                new TextSpan(
                                    text: " or ",
                                    style: GoogleFonts.poppins(
                                      color: Color(0xff000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    )),
                                new TextSpan(
                                    text: "business",
                                    style: GoogleFonts.poppins(
                                      color: Color(0xff8341c5),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    )),
                                new TextSpan(
                                    text: "!",
                                    style: GoogleFonts.poppins(
                                      color: Color(0xff000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    )),
                              ])),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container Button() {
    return Container(
      width: 310,
      height: 50,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [Color(0xff8c38af), Color(0xff8242c6)],
          stops: [0, 1],
          begin: Alignment(-1.00, 0.00),
          end: Alignment(1.00, -0.00),
          // angle: 0,
          // scale: undefined,
        ),
        boxShadow: [
          BoxShadow(
              color: Color(0x7fb275fd),
              offset: Offset(0, 10),
              blurRadius: 30,
              spreadRadius: 0)
        ],
      ),
      child: FlatButton(
        child: new Text(
          'Log In',
          style: TextStyle(
            color: Color(0xffffffff),
            fontSize: 22,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Row TabsSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isBuyer = false;
            });
          },
          child: Column(
            children: [
              Text(
                'Buyer',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: isBuyer ? FontWeight.normal : FontWeight.bold,
                    color: isBuyer ? Colors.grey[600] : Color(0xff8242c5)),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 2.5,
                width: 125,
                color: isBuyer ? Colors.white : Color(0xff8242c5),
              )
            ],
          ),
        ),
        SizedBox(
          width: 50.0,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isBuyer = true;
            });
          },
          child: Column(
            children: [
              Text(
                'Seller',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: isBuyer ? FontWeight.bold : FontWeight.normal,
                    color: isBuyer ? Color(0xff862ff0) : Colors.grey[500]),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 2.5,
                width: 125,
                color: isBuyer ? Color(0xff862ff0) : Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }

  Container buyerForm() {
    return Container(
        //Inputs field
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: TextField(
          focusNode: _focusNode1,
          decoration: InputDecoration(
            hasFloatingPlaceholder: true,
            contentPadding:
                EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: -10.0),
            hintText: 'john.doe@xyz.com',
            labelText: 'Email Address',
            labelStyle: TextStyle(
              color: _focusNode1.hasFocus ? Colors.purple : Colors.grey[800],
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purple, width: 2.0)),
          ),
        ),
      ),
      SizedBox(
        height: 25.0,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 28.0),
        child: TextField(
          focusNode: _focusNode2,
          obscureText: true,
          decoration: InputDecoration(
            hasFloatingPlaceholder: true,
            contentPadding:
                EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0, top: -5.0),
            hintText: '********',
            labelText: 'Password',
            labelStyle: TextStyle(
              color: _focusNode2.hasFocus ? Colors.purple : Colors.grey[800],
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purple, width: 2.0)),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Forget Password?',
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      )
    ]));
  }
}
