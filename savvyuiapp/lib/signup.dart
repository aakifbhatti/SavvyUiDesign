import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:savvyuiapp/signin.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  FocusNode _focusNode3 = FocusNode();
  FocusNode _focusNode4 = FocusNode();
  late Color color;
  bool buyer = false;
  bool seller = false;

  @override
  Widget build(BuildContext context) {
    _focusNode1.addListener(() {
      setState(() {
        color = _focusNode1.hasFocus ? Colors.blue : Colors.red;
      });
    });
    _focusNode2.addListener(() {
      setState(() {
        color = _focusNode2.hasFocus ? Colors.blue : Colors.red;
      });
    });
    _focusNode3.addListener(() {
      setState(() {
        color = _focusNode3.hasFocus ? Colors.blue : Colors.red;
      });
    });
    _focusNode4.addListener(() {
      setState(() {
        color = _focusNode4.hasFocus ? Colors.blue : Colors.red;
      });
    });

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(children: [
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
            top: 200,
            left: 25,
            child: Container(
              child: Column(
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.64,
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
          child: Container(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 270.0, 0.0, 0.0),
                  child: Center(
                      child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: TextField(
                        focusNode: _focusNode1,
                        decoration: InputDecoration(
                          hasFloatingPlaceholder: true,
                          contentPadding: EdgeInsets.only(
                              left: 8.0, right: 8.0, bottom: 8.0, top: -10.0),
                          hintText: 'John Doe',
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                            color: _focusNode1.hasFocus
                                ? Colors.purple
                                : Colors.grey[800],
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 2.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: TextField(
                        focusNode: _focusNode2,
                        decoration: InputDecoration(
                          hasFloatingPlaceholder: true,
                          contentPadding: EdgeInsets.only(
                              left: 8.0, right: 8.0, bottom: 8.0, top: -10.0),
                          hintText: 'john.doe@xyz.com',
                          labelText: 'Email Address',
                          labelStyle: TextStyle(
                            color: _focusNode2.hasFocus
                                ? Colors.purple
                                : Colors.grey[800],
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 2.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                      child: TextField(
                        focusNode: _focusNode3,
                        obscureText: true,
                        decoration: InputDecoration(
                          hasFloatingPlaceholder: true,
                          contentPadding: EdgeInsets.only(
                              left: 8.0, right: 8.0, bottom: 8.0, top: -5.0),
                          hintText: '********',
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: _focusNode3.hasFocus
                                ? Colors.purple
                                : Colors.grey[800],
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.purple, width: 2.0)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                   
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 105.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Colors.purple,
                                  value: buyer,
                                  onChanged: (value) {
                                    setState(() {
                                      buyer = !buyer;
                                    });
                                  }),
                              Text(
                                'Buyer',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Colors.purple,
                                  value: seller,
                                  onChanged: (value) {
                                    setState(() {
                                      seller = !seller;
                                    });
                                  }),
                              Text(
                                'Seller',
                                style: TextStyle(
                                  color: Color(0xff000000),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
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
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    Container(
                        child: Column(
                          children: [
                            Text("Or sign up with",
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
                                      Image.asset('assets/google-icon.png', scale: 2.2),
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
                            SizedBox(height: 32.0),
                            
                            GestureDetector(
                              onTap: (){
                                
                                Navigator.pop(context);

                              },
                              child: RichText(
                                  text: new TextSpan(children: [
                                new TextSpan(
                                    text: "Already Have an account? ",
                                    style: GoogleFonts.poppins(
                                      color: Color(0xff000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                    )),
                                new TextSpan(
                                    text: "Login Now",
                                    style: GoogleFonts.poppins(
                                      color: Color(0xff8341c5),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.normal,
                                    )),
                                
                              ])),
                            )
                          ],
                        ),
                      ),
                  ])))),
        ),
      ]),
    );
  }
}
