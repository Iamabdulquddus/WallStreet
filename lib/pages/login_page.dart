// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/responsive.dart';
import '../utils/routes.dart';
import 'dart:async';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

//variables defined here
String name = '';
bool changeButton = false;
final _formKey = GlobalKey<FormState>();

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  //animation
  late AnimationController controller1;
  late AnimationController controller2;
  late Animation<double> animation1;
  late Animation<double> animation2;
  late Animation<double> animation3;
  late Animation<double> animation4;

  @override
  void initState() {
    super.initState();

    controller1 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation1 = Tween<double>(begin: .1, end: .15).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller1.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller1.forward();
        }
      });
    animation2 = Tween<double>(begin: .02, end: .04).animate(
      CurvedAnimation(
        parent: controller1,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    controller2 = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 5,
      ),
    );
    animation3 = Tween<double>(begin: .41, end: .38).animate(CurvedAnimation(
      parent: controller2,
      curve: Curves.easeInOut,
    ))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller2.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller2.forward();
        }
      });
    animation4 = Tween<double>(begin: 170, end: 190).animate(
      CurvedAnimation(
        parent: controller2,
        curve: Curves.easeInOut,
      ),
    )..addListener(() {
        setState(() {});
      });

    Timer(Duration(milliseconds: 2500), () {
      controller1.forward();
    });

    controller2.forward();
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }

  //method
  // this method moveToHome is used here for moving from login screen to home screen
  moveToHome(BuildContext context) async {
    //now is the form is valid this if will tell the current state know its time to perform blew funtion
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(
        const Duration(seconds: 1),
      );
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      // as soon as this will move to  the next screen the animation of button will reverse back to its orignal state.
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    Size size = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: size.height * (animation2.value + .58),
              left: size.width * .21,
              child: CustomPaint(
                painter: MyPainter(50),
              ),
            ),
            Positioned(
              top: size.height * .98,
              left: size.width * .1,
              child: CustomPaint(
                painter: MyPainter(animation4.value - 30),
              ),
            ),
            Positioned(
              top: size.height * .5,
              left: size.width * (animation2.value + .8),
              child: CustomPaint(
                painter: MyPainter(30),
              ),
            ),
            Positioned(
              top: size.height * animation3.value,
              left: size.width * (animation1.value + .1),
              child: CustomPaint(
                painter: MyPainter(60),
              ),
            ),
            Positioned(
              top: size.height * .1,
              left: size.width * .8,
              child: CustomPaint(
                painter: MyPainter(animation4.value),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xffc6d8fd).withOpacity(.02),
                  Color(0xff141182).withOpacity(0.4)
                ]),
              ),
              child: Center(
                child: ResponsiveWidget.isSmallScreen(context)
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            "assets/images/login.png",
                            scale: 2.5,
                            color: Colors.white.withOpacity(0.8),
                            colorBlendMode: BlendMode.modulate,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            width: screenSize.width / 1.5,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            //form widget adds a lot of enteries in it.
                            child: Form(
                              //this is the key of the form.
                              key: _formKey,
                              child: Column(
                                children: [
                                  Text(
                                    'Welcome $name',
                                    style: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.8),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                        labelText: "Email",
                                        hintText: "Enter your email",
                                        prefixIcon: Icon(Icons.email_outlined),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.red,
                                            width: 1,
                                          ),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red, width: 1),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffd18d06),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffd18d06),
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Email can't be empty";
                                        } else if (value.length < 6) {
                                          return "length should be atleast 6";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.8),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        labelText: "Password",
                                        hintText: "Enter password",
                                        prefixIcon: Icon(Icons.lock_outline),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red, width: 1),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red, width: 1),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffd18d06)),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xffd18d06)),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Password can't be empty";
                                        } else if (value.length < 6) {
                                          return "length should be atleast 6";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  // making costume bottom here.
                                  // inkwell and gesture detector are almost the same but this got some effects in it.
                                  InkWell(
                                    onTap: () => moveToHome(context),
                                    // animated container ...duration is required in this .
                                    child: AnimatedContainer(
                                      duration: const Duration(seconds: 1),
                                      width: changeButton ? 40 : 130,
                                      height: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Color(0xffd18d06),
                                        borderRadius: BorderRadius.circular(
                                            changeButton ? 40 : 10),
                                      ),
                                      child: changeButton
                                          ? const Icon(
                                              Icons.done,
                                              color: Colors.white,
                                            )
                                          : const Text(
                                              'Log in',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                              ),
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            width: screenSize.width / 2,
                            height: MediaQuery.of(context).size.height,
                            child: Image.asset(
                              "assets/images/login.png",
                              scale: 2.5,
                              color: Colors.white.withOpacity(0.8),
                              colorBlendMode: BlendMode.modulate,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Container(
                            width: screenSize.width / 2.5,
                            height: screenSize.width / 2.5,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.5),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            //form widget adds a lot of enteries in it.
                            child: Form(
                              //this is the key of the form.
                              key: _formKey,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Welcome $name',
                                    style: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.8),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: const InputDecoration(
                                        labelText: "Email",
                                        hintText: "Enter your email",
                                        prefixIcon: Icon(Icons.email_outlined),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red, width: 1),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red, width: 1),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffd18d06),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffd18d06),
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Password can't be empty";
                                        } else if (value.length < 6) {
                                          return "length should be atleast 6";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(.8),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                        labelText: "Password",
                                        hintText: "Enter password",
                                        prefixIcon: Icon(Icons.lock_outline),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red, width: 1),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.red, width: 1),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffd18d06),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xffd18d06),
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return "Password can't be empty";
                                        } else if (value.length < 6) {
                                          return "length should be atleast 6";
                                        }
                                        return null;
                                      },
                                    ),
                                  ),

                                  const SizedBox(
                                    height: 40,
                                  ),
                                  // making costume buttom here.
                                  // inkwell and guesture dector are almost the same but this got some effects in it.
                                  InkWell(
                                    onTap: () {
                                      moveToHome(context);
                                    },
                                    // animated container ...duration is required in this .
                                    child: AnimatedContainer(
                                      duration: const Duration(seconds: 1),
                                      width: changeButton ? 50 : 130,
                                      height: 50,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Color(0xffd18d06),
                                        borderRadius: BorderRadius.circular(
                                            changeButton ? 50 : 10),
                                      ),
                                      child: changeButton
                                          ? const Icon(
                                              Icons.done,
                                              color: Colors.white,
                                            )
                                          : const Text(
                                              'Log in',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double radius;

  MyPainter(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = LinearGradient(
              colors: [Color(0xffd18d06), Color(0xfffda253)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight)
          .createShader(Rect.fromCircle(
        center: Offset(0, 0),
        radius: radius,
      ));

    canvas.drawCircle(Offset.zero, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
