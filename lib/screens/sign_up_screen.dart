import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_food/UiColors.dart';
import 'package:good_food/components/title_text.dart';
import 'package:good_food/components/user_input_field.dart';
import 'package:good_food/screens/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController fnameController = TextEditingController();
  final TextEditingController mnameController = TextEditingController();
  final TextEditingController lnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  bool isObscured = true;
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: Column(
                children: [
                  TitleText(
                    txtName: "Sign Up",
                    txtSize: 30,
                    txtColor: titleColor,
                  ),

                  const SizedBox(height: 20),
                  UserInputField(
                    controller: fnameController,
                    prefixIcon: const Icon(Icons.person),
                    hintTxt: "First Name",
                    label: "First Name",
                  ),

                  const SizedBox(height: 20),
                  UserInputField(
                    controller: mnameController,
                    hintTxt: "Middle Name",
                    prefixIcon: const Icon(Icons.person_2_outlined),
                    label: "Middle Name",
                  ),

                  const SizedBox(height: 20),
                  UserInputField(
                    controller: lnameController,
                    hintTxt: "Last Name",
                    prefixIcon: const Icon(Icons.person_2_rounded),
                    label: "Last Name",
                  ),

                  const SizedBox(height: 20),
                  UserInputField(
                    controller: emailController,
                    prefixIcon: const Icon(Icons.email_outlined),
                    hintTxt: "Email",
                    label: "Email",
                  ),

                  const SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    obscureText: isObscured,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      prefixIcon: const Icon(
                        Icons.lock
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          isObscured ? Icons.visibility_off : Icons.visibility
                        ),
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
                        borderSide: const BorderSide(color: Colors.greenAccent),
                      ),
                      fillColor: Colors.white70,
                      filled: true,
                    ),
                  ),

                  const SizedBox(height: 20,),
                  TextField(
                    readOnly: true,
                    keyboardType: TextInputType.datetime,
                    controller: dobController,
                    decoration: InputDecoration(
                      labelText: "Date of Birth",
                      prefixIcon: Icon(Icons.calendar_month_sharp),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.date_range_outlined),
                        onPressed: () async{
                          DateTime? datePicked = await showDatePicker(context: context,
                              firstDate: DateTime(1990),
                              lastDate: DateTime(2050),
                              initialDate: DateTime.now());

                          if(datePicked!= null){
                            print(datePicked);
                            setState(() {
                              dobController.text = "${datePicked.toLocal()}".split(' ')[0];
                            });
                          }
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


                 const SizedBox(height: 10,),
                 Container(
                   alignment: Alignment.centerLeft,
                   child:Text("Gender:",style:TextStyle(
                     fontSize: 18,
                     fontWeight: FontWeight.w600
                   ),),
                 ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Radio(value: "Male",
                              groupValue: gender,
                              onChanged: (value){
                                setState(() {
                                  gender=value.toString();
                                });
                              }),
                          Text("Male")
                        ],
                      ),

                      Row(
                        children: [
                          Radio(value: "Female",
                              groupValue: gender,
                              onChanged: (value){
                                setState(() {
                                  gender=value.toString();
                                });
                              }),
                          Text("Female")
                        ],
                      ),

                      Row(
                        children: [
                          Radio(value: "Other",
                              groupValue: gender,
                              onChanged: (value){
                                setState(() {
                                  gender=value.toString();
                                });
                              }),
                          Text("Other")
                        ],
                      )
                    ],
                  ),

                  const SizedBox(height: 40,),
                  RichText(text:
                  TextSpan(
                    text: "already have account? Sing in",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap=(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                      }
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
