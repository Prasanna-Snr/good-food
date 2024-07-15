import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_food/UiColors.dart';
import 'package:good_food/components/cardBox.dart';
import 'package:good_food/components/text_click.dart';
import 'package:good_food/components/title_text.dart';
import 'package:good_food/components/user_input_field.dart';
import 'package:good_food/screens/farmer_screen.dart';
import 'package:good_food/screens/sign_up_screen.dart';

import '../components/button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool isObscured = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              width: double.infinity,

              // color: bgColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TitleText(
                    txtName: "Sign in",
                    txtSize: 30,
                    txtColor: titleColor,
                  ),
            
                  const SizedBox(height: 20),
            
                  UserInputField(
                    controller: emailController,
                    prefixIcon: const Icon(
                      Icons.email,
                      color: Colors.black45,
                    ),
                    hintTxt: "Email",
                  ),
            
                  const SizedBox(height: 20),
            
                  TextField(
                    controller: passwordController,
                    obscureText: isObscured,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock,color: Colors.black45,),
                      suffixIcon: IconButton(
                        icon: Icon(isObscured ? Icons.visibility_off : Icons.visibility,color: Colors.black45,),
                        onPressed: () {
                          setState(() {
                            isObscured = !isObscured;
                          });
                        },
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.greenAccent),
                      ),
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: isChecked,
                              onChanged: (value){
                                setState(() {
                                  isChecked= value!;
                                });
                              }),
            
                          const Text("Remember me")
                        ],
                      ),
            
                      TextClick(text: "Forgot Password?",
                          txtColor: Colors.lightBlue,
                          onPressed:(){
                        print("Forgot password is clicked");
                          })
                    ],
            
                  ),
            
                  const SizedBox(height: 20,),
            
                  SizedBox(
                    width: 130,
                    child: CustomBtn(
                      txtName: "Login",
                      bgColor: Colors.blueAccent,
                      onPressed: (){
                        print("login button clicked");
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FarmerScreen()));
                      },
                      txtColor: Colors.white,
                    ),
                  ),
            
                  const SizedBox(height: 20,),
                 const SizedBox(
            
                    child: Row(
                      children: [
                        Expanded(child:
                        Divider(
                          thickness: 1.5,
                        )),
            
                        Text("  Continue with  "),
            
                        Expanded(child:
                        Divider(
                          thickness: 1.5,
                        ))
                      ],
                    ),
                  ),
            
                  const SizedBox(height: 20,),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardBox(onPressed: (){
                        print("Continue with facebook");
                      }, image: AssetImage("assets/images/fb.png")),
            
                      CardBox(onPressed: (){
                        print("Continue with google");
                      }, image: AssetImage("assets/images/google.png"))
                    ],
                  ),
            
            
                  const SizedBox(height:20,),
                 RichText(
                     text: TextSpan(
                       children: [
                         TextSpan(text: "don't have account? ", style: TextStyle(color: Colors.black)),
                         TextSpan(text: "Sing Up",style: TextStyle(color: Colors.blue),
                         recognizer: TapGestureRecognizer()
                         ..onTap=(){
                           print("Sign up text clicked");
                           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                         })
                       ]
                     ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
