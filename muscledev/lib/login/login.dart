import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:muscledev/mainpage.dart';
import 'package:muscledev/styling/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CustomColors.bagroundColor,
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/login.png"),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Fontspring',
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 65,
                              height: 5,
                              color: CustomColors.greenColor,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Positioned(
                  bottom: 130,
                  child: Text(
                    "     Welcome Back,\n     Sarah",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Fontspring',
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 25),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2C2C2E)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2C2C2E)),
                    ),
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        color: Colors.white),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2C2C2E)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2C2C2E)),
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        color: Colors.white),
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password ?",
                    style: TextStyle(
                        fontFamily: "Fontspring",
                        color: CustomColors.greenColor,
                        fontSize: 14),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 0,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff3A3A3C),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                      child: Image.asset(
                        "assets/images/google.png",
                        height: 25,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff3A3A3C),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Center(
                      child: Image.asset(
                        "assets/images/apple.png",
                        height: 25,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 0.50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: CustomColors.greenColor,
                        borderRadius: BorderRadius.circular(40)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainPage(),
                            ));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'Fontspring',
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.transparent,
                        disabledForegroundColor:
                            Colors.transparent.withOpacity(0.38),
                        disabledBackgroundColor:
                            Colors.transparent.withOpacity(0.12),
                        shadowColor: Colors.transparent,
                        //make color or elevated button transparent
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
