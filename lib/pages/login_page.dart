// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
final TextEditingController cuseremail =  TextEditingController();
final TextEditingController cuserpass =  TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
         child: ListView(
          children: [ 
               Column(
              children: [
                Image.asset('lib/assets/asset1.jpg',
                        // width: 100,
                        // height: 300,
                        ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom:30.0),
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple
                                 ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:12.0),
                              child: TextFormField(
                                controller: cuseremail,
                                decoration: InputDecoration(
                                  label:Text('Email'),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                   
                                  ),
                                  validator: (value) {
                                    if(value==null || value.isEmpty) {
                                      return 'This field is required';
                                    } else if (value.length > 50) {
                                      return 'Input must be less than 50 characters';
                                    }
                                    return null;
                                  },
                            
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom:12.0),
                              child: TextFormField(
                                controller: cuserpass,
                                decoration: InputDecoration(
                                  label:Text('Password'),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                    ),
                                    obscureText: true,
                                  validator: (value) {
                                    if (value==null || value.isEmpty){
                                      return 'This field is required';
                                    } else if (value.length > 20) {
                                      return 'Input must be less than 20 characters';
                                    }
                                    return null;
                                    }                          
                                ),
                            ),
                            SizedBox(
                          //    height: 15,
                              width: MediaQuery.sizeOf(context).width,
                              child: FilledButton(
                                style: FilledButton.styleFrom(
                                  backgroundColor: Colors.deepPurple
                                ),
                                onPressed: (){
                                  if (_formKey.currentState != null && _formKey.currentState!.validate()) {             
                                  Fluttertoast.showToast(
                                    msg: 'Form Submitted');
                                  }
                                }, 
                                
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical:15),
                                  child: Text('Sign In'),
                                )),
                            ),
                            SizedBox(
                              height: 15,
                          ),
                        Row(
                          children: [
                            Text("Don't have an account?",
                            style: TextStyle(
                              color: Colors.deepPurple
                            ),),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/signup_page'); 
                              },
                              child: Text(" SignUp",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                          ],
                        ),
                        Text("Forgot Password?",
                          style: TextStyle(
                              color: Colors.deepPurple
                            ),
                            ),
                                  
                          ],
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ]
        
        ),
        
      ),
          
        
    );
  }
}