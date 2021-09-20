import 'package:brimm_app/screens/authentication/components/custom_form_field.dart';
import 'package:brimm_app/utils/constants.dart';
import 'package:brimm_app/utils/size_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpSignIn extends StatefulWidget {
  @override
  _SignUpSignInState createState() => _SignUpSignInState();
}

class _SignUpSignInState extends State<SignUpSignIn> {

  bool signIn = true;
  bool _obscureText = true;

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPwdController = TextEditingController();
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController registerPwdController = TextEditingController();
  TextEditingController confirmPwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: bgColor
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.only(top: displayHeight(context)*0.06),
              child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                          'B',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: displayWidth(context)*0.3,
                            fontFamily: 'Academy Engraved LET',
                          )
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              signIn = true;
                            });
                          },
                          child: Text('Sign In',
                            style: TextStyle(
                                color: signIn ? kPrimaryColor : Colors.white,
                                fontSize: 22
                            ),),
                        ),
                        Container(
                          height: 30.0,
                          width: 1.0,
                          color: Colors.white30,
                          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              signIn = false;
                            });
                          },
                          child: Text('Sign Up',
                            style: TextStyle(
                                color: !signIn ? kPrimaryColor : Colors.white,
                                fontSize: 22
                            ),),
                        )
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: displayWidth(context)*0.1,
                              top: displayHeight(context)*0.1,
                              bottom: displayHeight(context)*0.02
                          ),
                          child: Text('Welcome \nTo Brimm',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32
                            ),
                          ),
                        )
                      ],
                    ),

                    Container(
                        //height: displayHeight(context)*0.6,
                        child: Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                signInContainer(),
                                SizedBox(height: displayHeight(context)*0.02),
                              ],
                            ),
                          ),
                        )
                    )
                  ]
              )
          ),
        )
      )
    );
  }


  Container signInContainer(){
    return
      signIn
          ?
          //Sign In Container
      Container(
        margin: EdgeInsets.only(
            left: displayWidth(context)*0.08,
            right: displayWidth(context)*0.1,
            top: displayHeight(context)*0.06
        ),
        child: Column(
          children: [
            CustomFormField(
              hint: 'Email address',
              textEditingController: loginEmailController,
            ),
            CustomFormField(
              hint: 'Password',
              textEditingController: loginPwdController,
              obscureText: _obscureText,
              togglePassword: _togglePassword,
            ),
            SizedBox(height: displayHeight(context)*0.15),

            Container(
              child: ElevatedButton(
                onPressed: () {
                  Get.offAllNamed('/dashboard');
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: buttonColor,
                      borderRadius: BorderRadius.circular(4)),
                  child: Container(
                    width: displayWidth(context)*0.8,
                    height: displayHeight(context)*0.06,
                    alignment: Alignment.center,
                    child: Text(
                      "Let's Go",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
          :
          //Sign Up container
      Container(
        margin: EdgeInsets.only(
            left: displayWidth(context)*0.08,
            right: displayWidth(context)*0.1,
            top: displayHeight(context)*0.06),
        child: Column(
          children: [
            CustomFormField(
              hint: 'Email address',
              textEditingController: registerEmailController,
            ),
            CustomFormField(
              hint: 'Username',
              textEditingController: usernameController,
            ),
            CustomFormField(
              hint: 'Password',
              textEditingController: registerPwdController,
              obscureText: _obscureText,
              togglePassword: _togglePassword,
            ),
            CustomFormField(
              hint: 'Confirm password',
              textEditingController: confirmPwdController,
              obscureText: _obscureText,
            ),
            SizedBox(height: displayHeight(context)*0.05),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/followTopics');
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4))),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: buttonColor,
                      borderRadius: BorderRadius.circular(4)),
                  child: Container(
                    width: displayWidth(context)*0.8,
                    height: displayHeight(context)*0.06,
                    alignment: Alignment.center,
                    child: Text(
                      "Let's Go",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }

  // Toggles to make password visible
  void _togglePassword() {
    print('toggle obscure text');
    setState(() {
      _obscureText = !_obscureText;
    });
  }

}
