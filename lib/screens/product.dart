import 'package:flutter/material.dart';
import 'package:shop_app/models/constants.dart';
import 'package:shop_app/screens/card.dart';

import 'categories.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70), bottomRight: Radius.circular(70)),
              color: g,
            ),
            height: 300,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/images/w1.png'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(alignment: Alignment.topLeft,child: IconButton(onPressed: (){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (BuildContext context)=>CategoriesScreen(),),
                        );
                      },icon: const Icon(Icons.arrow_back_ios))),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          const Text('Sliver Watch From \'BOSS\'',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Row(
                  children: const [
                    Text('Size:', style: TextStyle(fontSize: 20),),
                    SizedBox(width: 30,),
                    Text('for men', style: TextStyle(fontSize: 20),),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    const Text('Color:', style: TextStyle(fontSize: 20),),
                    const SizedBox(width: 30,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      height: 30,
                      width: 30,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Details', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text('From Database', style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
          ),
          const SizedBox(height: 90,),
          Align(
            alignment: Alignment.bottomCenter,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
    color: Colors.blue,
              onPressed: (){
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => CardScreen()));
              },
              child: Text('add to card', style: TextStyle(fontSize: 20, color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
