// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:shop_app/models/constants.dart';
import 'package:shop_app/screens/bottom_navigator_bar.dart';
import 'package:shop_app/screens/profile.dart';

class EditProfile extends StatefulWidget {
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var _firstNameController = TextEditingController();
  var _lastNameController = TextEditingController();
  var _emailController = TextEditingController();
  var formSignupKey = GlobalKey<FormState>();

  var resetKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: formSignupKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/OShops.png', height: 150, width: 150,),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: IconButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => BottomNavigationScreen(),
                        ),);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('edit profile', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            controller: _firstNameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your first name';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'enter your first name',
                              label: Text(
                                'First Name',
                                // style: TextStyle(color: signup_bg),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            controller: _lastNameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your last name';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'enter your last name',
                              label: Text(
                                'Last Name',
                                // style: TextStyle(color: signup_bg),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            controller: _emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'enter your email',
                              label: Text(
                                'Email',
                                // style: TextStyle(color: signup_bg),
                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minWidth: 500,
                              color: signup_bg,
                              onPressed: () {
                                if (formSignupKey.currentState!.validate()) {
                                  FocusScope.of(context).unfocus();
                                }
                              },
                              child: Text(
                                  'Submit'.toUpperCase(),
                                  style:TextStyle(color: Colors.white, fontSize: 20)
                              ),
                            ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
