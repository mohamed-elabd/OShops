// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:shop_app/models/constants.dart';
import 'package:shop_app/modules/login/log_in_form.dart';
import 'package:shop_app/screens/shopping.dart';

import 'cubit/cubit.dart';

class ResetPassword extends StatefulWidget {
  final String? token;

  ResetPassword(this.token);
  @override
  State<ResetPassword> createState() => _ResetPasswordState(token!);
}

class _ResetPasswordState extends State<ResetPassword> {
  late final String token;
  _ResetPasswordState(this.token);
  var _passwordControllerOld = TextEditingController();

  var _passwordControllerNew = TextEditingController();

  var resetKey = GlobalKey<FormState>();

  bool isPassword = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white10,
        leading: IconButton(
          onPressed: () {
            //Navigator.pop(context);
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => LoginScreen(token),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Image.asset('assets/images/OShops.png', height: 150, width: 150,),
            Card(
              key: resetKey,
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Align(alignment:Alignment.topLeft,child: Text('Reset Your Password', style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),)),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(defpaultPadding),
                    child: TextFormField(
                      controller: _passwordControllerOld,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password Password is empty';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        hintText: 'enter your old password',
                        label: Text(
                          'Old Password',
                        ),
                        errorBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(defpaultPadding),
                    child: TextFormField(
                      controller: _passwordControllerNew,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password is empty';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        hintText: 'enter your new password',
                        label: Text(
                          'New Password',
                        ),
                        errorBorder: UnderlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minWidth: 500,
                      color: signup_bg,
                      onPressed: () {
                        if (resetKey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                        }
                      },
                      child: Text(
                          'Reset Password',
                          style:TextStyle(color: Colors.white, fontSize: 20)
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
