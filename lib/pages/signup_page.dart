// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../widgets/responsive.dart';
import '../utils/routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
//variables defined here
String name = '';
bool changeButton = false;
//TextController to read text entered in text field
TextEditingController password = TextEditingController();
TextEditingController confirmPassword = TextEditingController();

final _formKey = GlobalKey<FormState>();

class _SignUpPageState extends State<SignUpPage> {
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
      await Navigator.pushNamed(context, MyRoutes.loginRoute);
      // as soon as this will move to the next screen the animation of button will reverse back to its orignal state.
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        child: Center(
          child:
          ResponsiveWidget.isSmallScreen(context)?
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/login.png",
                scale: 2.5,

                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome $name',
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15.0),
                width: screenSize.width/1.5,
                //form widget adds a lot of enteries in it.
                child: Form(
                  //this is the key of the form.
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          labelText: "User Name",
                          hintText: "Enter user name",
                          prefixIcon: Icon(Icons.person_outline),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User Name can't be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email",
                          prefixIcon: Icon(Icons.email_outlined),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
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
                      SizedBox(height: 10,),
                      TextFormField(
                        obscureText: true,
                        controller: password,
                        decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter password",
                          prefixIcon: Icon(Icons.person_outline),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06)),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06)),
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
                      SizedBox(height: 10,),
                      TextFormField(
                        obscureText: true,
                        controller: confirmPassword,
                        decoration: const InputDecoration(
                          labelText: "Confirm password",
                          hintText: "Enter password again",
                          prefixIcon: Icon(Icons.person_outline),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please re-enter password';
                          }
                          if(password.text!=confirmPassword.text){
                            return "Password does not match";
                          }
                          return null;

                        },

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
                            borderRadius:
                            BorderRadius.circular(changeButton ? 40 : 10),
                          ),
                          child: changeButton
                              ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                              : const Text(
                            'Sign up',
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
            ],
          )
              :
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: screenSize.width/2,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  "assets/images/login.png",
                  scale: 2.5,

                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: screenSize.width/2.5,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.all(20),
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
                      SizedBox(height: 20,),
                      TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          labelText: "User Name",
                          hintText: "Enter user name",
                          prefixIcon: Icon(Icons.person_outline),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                        ),

                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User Name can't be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email",
                          prefixIcon: Icon(Icons.email_outlined),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
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
                      SizedBox(height: 10,),
                      TextFormField(
                        obscureText: true,
                        controller: password,
                        decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter password",
                          prefixIcon: Icon(Icons.person_outline),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
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
                      SizedBox(height: 10,),
                      TextFormField(
                        obscureText: true,
                        controller: confirmPassword,
                        decoration: const InputDecoration(
                          labelText: "Confirm password",
                          hintText: "Enter password again",
                          prefixIcon: Icon(Icons.person_outline),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                          focusedBorder:  OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffd18d06),),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please re-enter password';
                          }
                          if(password.text!=confirmPassword.text){
                            return "Password does not match";
                          }
                          return null;

                        },

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
                            borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 10),
                          ),
                          child: changeButton
                              ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                              : const Text(
                            'Sign up',
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
    );
  }
}
