// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flower_app/pages/login.dart';
import 'package:flower_app/shared/colors.dart';
import 'package:flower_app/shared/constants.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
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
                obscureText: false,
                decoration: inputDecoration.copyWith(hintText: 'Enter Your Username'),
                
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
                 child: Text("Sign up", style: TextStyle(fontSize: 19,color: Colors.white),),
              ),
              SizedBox(height: 40,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('I have an account',style: TextStyle(fontSize: 19),),
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const Login()));},
                   child: Text('Sign in',style: TextStyle(fontSize: 20,color: BTNGreen))),
              ],)
            ],),
          ),
        ),
      ),
    );
  }
}