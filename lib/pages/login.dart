// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flower_app/pages/signup.dart';
import 'package:flower_app/shared/colors.dart';
import 'package:flower_app/shared/constants.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
               TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: inputDecoration.copyWith(hintText: 'Enter Your Email'),
              
            ),
              
            SizedBox(height: 33,),
             TextField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: inputDecoration.copyWith(hintText: 'Enter Your Password'),
              
            ),
            SizedBox(height: 33,),
            ElevatedButton(
       onPressed: (){},
       style: ButtonStyle(
       backgroundColor: MaterialStateProperty.all(BTNGreen),
       padding: MaterialStateProperty.all(EdgeInsets.all(18)),
       shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      ),
       child: Text("Sign in", style: TextStyle(fontSize: 19,color: Colors.white),),
    ),
    SizedBox(height: 40,),
    Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text('don\'t have an account',style: TextStyle(fontSize: 19),),
      TextButton(onPressed: (){
                          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> const Register()));
      }, child: Text('Sign up',style: TextStyle(fontSize: 20,color: BTNGreen))),
    ],)
          ],),
        ),
      ),
    );
  }
}