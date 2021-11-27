// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/constants.dart';
import 'package:shop_app/screens/brands.dart';
import 'package:shop_app/screens/categories.dart';
import 'package:shop_app/screens/product.dart';

class ShoppingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var p = ShopCubit.get(context).allStores;
    // var ph = ShopCubit.get(context).allStores['_id'];
    // var ind = ShopCubit.get(context).allStores.map((e) => e['_id']);
    // String base = 'https://oshops-app.herokuapp.com/';
    // String ProductImage = '${ShopCubit.get(context).allProducts[0]['productImageURL']}';
    // String ProductName =
    //     '${ShopCubit.get(context).allProducts[0]['productName']}';
    // String ProductPrice = '${ShopCubit.get(context).allProducts[0]['price']}';
    // String ProductImage1 =
    //     '${ShopCubit.get(context).allProducts[1]['productImageURL']}';
    // String ProductName1 =
    //     '${ShopCubit.get(context).allProducts[1]['productName']}';
    // String ProductPrice1 = '${ShopCubit.get(context).allProducts[1]['price']}';
    // String ProductImage2 =
    //     '${ShopCubit.get(context).allProducts[2]['productImageURL']}';
    // String ProductName2 =
    //     '${ShopCubit.get(context).allProducts[2]['productName']}';
    // String ProductPrice2 = '${ShopCubit.get(context).allProducts[2]['price']}';
    // String ProductImage3 =
    //     '${ShopCubit.get(context).allProducts[3]['productImageURL']}';
    // String ProductName3 =
    //     '${ShopCubit.get(context).allProducts[3]['productName']}';
    // String ProductPrice3 = '${ShopCubit.get(context).allProducts[3]['price']}';
    //
    // List images = [
    //   '$base${p[0]['storeLogoURL']}'.replaceAll("\\", "/"),
    //   '$base${p[1]['storeLogoURL']}'.replaceAll("\\", "/"),
    //   '$base${p[2]['storeLogoURL']}'.replaceAll("\\", "/"),
    //   '$base${p[3]['storeLogoURL']}'.replaceAll("\\", "/"),
    //   '$base${p[4]['storeLogoURL']}'.replaceAll("\\", "/"),
    //   '$base${p[5]['storeLogoURL']}'.replaceAll("\\", "/"),
    //   '$base${p[6]['storeLogoURL']}'.replaceAll("\\", "/"),
    //   '$base${p[7]['storeLogoURL']}'.replaceAll("\\", "/"),
    //   '$base${p[8]['storeLogoURL']}'.replaceAll("\\", "/"),
    // ];
    //
    // List id = [
    //   '$base${p[0]['_id']}',
    //   '$base${p[1]['_id']}',
    //   '$base${p[2]['_id']}',
    //   '$base${p[3]['_id']}',
    //   '$base${p[4]['_id']}',
    //   '$base${p[5]['_id']}',
    //   '$base${p[6]['_id']}',
    //   '$base${p[7]['_id']}',
    //   '$base${p[8]['_id']}',
    // ];

    // List<String> names = [
    //   '${p[0]['storeName']}'
    //       '${p[1]['storeName']}'
    //       '${p[2]['storeName']}'
    //       '${p[3]['storeName']}'
    //       '${p[4]['storeName']}'
    //       '${p[5]['storeName']}'
    //       '${p[6]['storeName']}'
    //       '${p[7]['storeName']}'
    //       '${p[8]['storeName']}'
    // ];

    List imagessss = [
      'assets/images/Cars.jpeg',
      'assets/images/Electronics.jpeg',
      'assets/images/Groceries.jpeg',
      'assets/images/Makeup.jpeg',
    ];

    List CaImages = [
      'assets/images/11.png',
      'assets/images/22.png',
      'assets/images/33.png',
      'assets/images/44.png',
    ];

    Column buildColumn(BuildContext context, screen, url) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => screen));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: g,
              ),
              height: 180,
              width: 180,
              child: Image.asset(url),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('watch',
              style: TextStyle(fontSize: 19),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          const SizedBox(
            height: 10,
          ),
          const Text(
            '300\$',
            style: TextStyle(fontSize: 19, color: Colors.green),
          ),
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Flexible(
                    flex: 8,
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29.5),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            hintText: 'search',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: const [
                  Text(
                    'Stores',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 135,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: imagessss.length,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 80,
                    child: Column(
                      children: <Widget>[
                        FloatingActionButton(
                          //backgroundColor: ,
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CategoriesScreen(),
                                ));
                          },
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  imagessss[index],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        index == 0
                            ? const Text('Cars')
                            : index == 1
                            ? const Text('Electronics')
                            : index == 2
                            ? const Text('Groceries')
                            : index == 3
                            ? const Text('Makeup')
                            : index == 4
                            ? const Text('')
                            : const Text('')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: const [
                  Text(
                    'Brands',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: imagessss.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (BuildContext context)=>BrandsScreen(),),
                      );
                    },
                    child: Container(
                      color: Colors.white,
                      margin: const EdgeInsets.only(right: 20),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (BuildContext context)=>BrandsScreen(),),
                                  );
                                },
                                child: Container(
                                  height: 80,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                        imagessss[index],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Brand Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19,),),
                                  SizedBox(height: 5,),
                                  Text('Details', style: TextStyle(fontSize: 15,),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'For you',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 150,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
              ),
              items: CaImages.map((imageURL) {
                return Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    imageURL,
                    fit: BoxFit.fill,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const Text(
                    'Recommended',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (BuildContext context)=>CategoriesScreen(),),
                      );
                    },
                    child: const Text(
                      'see all',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  buildColumn(context, ProductScreen(), 'assets/images/w1.png'),
                  const Spacer(),
                  buildColumn(context, ProductScreen(), 'assets/images/w1.png'),
                ],
              ),
            ),
            const SizedBox(height: 25,),
          ],
        ),
      ),
    );

    // return BlocConsumer<ShopCubit, ShopStates>(
    //   listener: (context, state) {},
    //   builder: (context, state) {
    //     return SingleChildScrollView(
    //       physics: BouncingScrollPhysics(),
    //       child: Column(
    //         children: [
    //           const SizedBox(
    //             height: 25,
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 10),
    //             child: Row(
    //               children: [
    //                 Flexible(
    //                   flex: 8,
    //                   child: Container(
    //                     height: 50,
    //                     margin: const EdgeInsets.symmetric(vertical: 30),
    //                     padding: const EdgeInsets.symmetric(
    //                         horizontal: 30, vertical: 5),
    //                     decoration: BoxDecoration(
    //                       color: Colors.white,
    //                       borderRadius: BorderRadius.circular(29.5),
    //                     ),
    //                     child: const TextField(
    //                       decoration: InputDecoration(
    //                           icon: Icon(Icons.search),
    //                           hintText: 'search',
    //                           border: InputBorder.none),
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 10),
    //             child: Row(
    //               children: const [
    //                 Text(
    //                   'Stores',
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 22,
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //           const SizedBox(
    //             height: 25,
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 10),
    //             child: SizedBox(
    //               height: 135,
    //               child: ListView.builder(
    //                 shrinkWrap: true,
    //                 physics: BouncingScrollPhysics(),
    //                 scrollDirection: Axis.horizontal,
    //                 itemCount: imagessss.length,
    //                 itemBuilder: (context, index) => Container(
    //                   margin: const EdgeInsets.only(right: 20),
    //                   width: 80,
    //                   child: Column(
    //                     children: <Widget>[
    //                       FloatingActionButton(
    //                         //backgroundColor: ,
    //                         onPressed: () {
    //                           Navigator.pushReplacement(
    //                               context,
    //                               MaterialPageRoute(
    //                                 builder: (context) => CategoriesScreen(),
    //                               ));
    //                         },
    //                         child: Container(
    //                           height: 80,
    //                           decoration: BoxDecoration(
    //                             shape: BoxShape.circle,
    //                             image: DecorationImage(
    //                               fit: BoxFit.fill,
    //                               image: AssetImage(
    //                                 imagessss[index],
    //                               ),
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                       const SizedBox(
    //                         height: 20,
    //                       ),
    //                       index == 0
    //                           ? const Text('Cars')
    //                           : index == 1
    //                           ? const Text('Electronics')
    //                           : index == 2
    //                           ? const Text('Groceries')
    //                           : index == 3
    //                           ? const Text('Makeup')
    //                           : index == 4
    //                           ? const Text('')
    //                           : const Text('')
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 10),
    //             child: Row(
    //               children: const [
    //                 Text(
    //                   'Brands',
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 22,
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //           const SizedBox(height: 25,),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 20),
    //             child: SizedBox(
    //               height: 100,
    //               child: ListView.builder(
    //                 shrinkWrap: true,
    //                 physics: BouncingScrollPhysics(),
    //                 scrollDirection: Axis.horizontal,
    //                 itemCount: imagessss.length,
    //                 itemBuilder: (context, index) => GestureDetector(
    //                   onTap: (){
    //                     Navigator.pushReplacement(
    //                       context,
    //                       MaterialPageRoute(builder: (BuildContext context)=>BrandsScreen(),),
    //                     );
    //                   },
    //                   child: Container(
    //                     color: Colors.white,
    //                     margin: const EdgeInsets.only(right: 20),
    //                     child: Center(
    //                       child: Padding(
    //                         padding: const EdgeInsets.symmetric(horizontal: 15.0),
    //                         child: Row(
    //                           crossAxisAlignment: CrossAxisAlignment.center,
    //                           children: [
    //                             FloatingActionButton(
    //                               onPressed: () {
    //                                 Navigator.pushReplacement(
    //                                   context,
    //                                   MaterialPageRoute(builder: (BuildContext context)=>BrandsScreen(),),
    //                                 );
    //                               },
    //                               child: Container(
    //                                 height: 80,
    //                                 decoration: BoxDecoration(
    //                                   shape: BoxShape.circle,
    //                                   image: DecorationImage(
    //                                     fit: BoxFit.fill,
    //                                     image: AssetImage(
    //                                       imagessss[index],
    //                                     ),
    //                                   ),
    //                                 ),
    //                               ),
    //                             ),
    //                             const SizedBox(width: 15,),
    //                             Column(
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               mainAxisAlignment: MainAxisAlignment.center,
    //                               children: [
    //                                 Text('Brand Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19,),),
    //                                 const SizedBox(height: 5,),
    //                                 Text('Details', style: TextStyle(fontSize: 15,),),
    //                               ],
    //                             )
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           const SizedBox(height: 25,),
    //           const Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 10),
    //             child: Align(
    //               alignment: Alignment.topLeft,
    //               child: Text(
    //                 'For you',
    //                 style: TextStyle(
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 22,
    //                 ),
    //               ),
    //             ),
    //           ),
    //           const SizedBox(
    //             height: 25,
    //           ),
    //           CarouselSlider(
    //             options: CarouselOptions(
    //               height: 150,
    //               initialPage: 0,
    //               enlargeCenterPage: true,
    //               autoPlay: true,
    //               autoPlayInterval: const Duration(seconds: 3),
    //             ),
    //             items: CaImages.map((imageURL) {
    //               return Container(
    //                 width: double.infinity,
    //                 margin: EdgeInsets.symmetric(horizontal: 10),
    //                 child: Image.asset(
    //                   imageURL,
    //                   fit: BoxFit.fill,
    //                 ),
    //               );
    //             }).toList(),
    //           ),
    //           const SizedBox(
    //             height: 25,
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 10),
    //             child: Row(
    //               children: [
    //                 const Text(
    //                   'Recommended',
    //                   style: TextStyle(
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 22,
    //                   ),
    //                 ),
    //                 const Spacer(),
    //                 TextButton(
    //                   onPressed: () {
    //                     Navigator.pushReplacement(
    //                       context,
    //                       MaterialPageRoute(builder: (BuildContext context)=>CategoriesScreen(),),
    //                     );
    //                   },
    //                   child: const Text(
    //                     'see all',
    //                     style: TextStyle(
    //                       fontSize: 15,
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //           const SizedBox(
    //             height: 25,
    //           ),
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 10),
    //             child: Row(
    //               children: [
    //                 buildColumn(context, ProductScreen(), 'assets/images/w1.png'),
    //                 const Spacer(),
    //                 buildColumn(context, ProductScreen(), 'assets/images/w1.png'),
    //               ],
    //             ),
    //           ),
    //           const SizedBox(height: 25,),
    //         ],
    //       ),
    //     );
    //   },
    // );

  }

}
