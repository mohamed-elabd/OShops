// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace, deprecated_member_use


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shop_app/models/constants.dart';
import 'package:shop_app/screens/edit_profile.dart';
import 'package:shop_app/screens/shopping_address.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var titleTextStyle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );

  File? imageFile;

  void showCameraDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'please choose an option',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: pickImageWithCamera,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'camera',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        )
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: pickImageWithGallery,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(
                          Icons.image_outlined,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'gallery',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }

  void pickImageWithCamera() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.camera, maxWidth: 1080, maxHeight: 1080);

    // setState(() {
    //   imageFile = File(pickedFile!.path);
    // });
    cropImage(pickedFile!.path);
    Navigator.pop(context);
  }

  void pickImageWithGallery() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.gallery, maxWidth: 1080, maxHeight: 1080);
    // setState(() {
    //   imageFile = File(pickedFile!.path);
    // });
    cropImage(pickedFile!.path);
    Navigator.pop(context);
  }

  void cropImage(filePath) async{
    File? cropImage = await ImageCropper.cropImage(sourcePath: filePath,maxWidth: 1080, maxHeight: 1080);
    if(cropImage != null){
      setState(() {
        filePath = cropImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, bottom: 20),
                child: GestureDetector(
                  onTap: showCameraDialog,
                  child: Container(
                    width: size.width * 0.29,
                    height: size.width * 0.29,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 9,
                            color: Theme.of(context).scaffoldBackgroundColor),
                        shape: BoxShape.circle,
                    ),
                    child: imageFile == null ? Image.network(
                      'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_boy_person_people_avatar_icon_159358.png',
                    ) : Image.file(
                      imageFile!,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email@gmail.com',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          buildGestureDetector(Icons.edit, 'Edit Profile', () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => EditProfile(),
              ),
            );
          }),
          SizedBox(
            height: 20,
          ),
          buildGestureDetector(Icons.location_on_outlined, 'Shopping Address',
              () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ShoppingAddress(),
              ),
            );
          }),
          SizedBox(
            height: 20,
          ),
          buildGestureDetector(Icons.logout, 'Log Out', () {
            final alert = AlertDialog(
              title: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Are you sure to log out?',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
              content: Row(
                children: [
                  Container(
                    height: 40,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Yes',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        )),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'No',
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        )),
                  ),
                ],
              ),
            );
            showDialog(builder: (context) => alert, context: context);
          }),
        ],
      ),
    );
  }

  GestureDetector buildGestureDetector(icon, text, fun) {
    return GestureDetector(
      onTap: fun,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon),
              ),
              color: light,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 20),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ),
    );
  }
}
