// ignore_for_file: avoid_returning_null_for_void, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:shop_app/models/constants.dart';
import 'package:shop_app/screens/bottom_navigator_bar.dart';

class ShoppingAddress extends StatefulWidget {
  @override
  State<ShoppingAddress> createState() => _ShoppingAddressState();
}

class _ShoppingAddressState extends State<ShoppingAddress> {
  var _addressController = TextEditingController();
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
                              Text('Add your shopping address', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: 10,),
                          TextFormField(
                            controller: _addressController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your shopping address';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'enter your shopping address',
                              label: Text(
                                'Shopping Address',
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
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
