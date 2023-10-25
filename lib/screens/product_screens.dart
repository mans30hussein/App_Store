import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/presentation_layer/colors_app.dart';
import 'package:store_app/screens/detailes_screen.dart';

import '../models/products.dart';
import '../presentation_layer/widgets/product-card.dart';

class HomeScreens extends StatelessWidget {
    HomeScreens({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor ,
        elevation: 0,
        leading: IconButton(onPressed: () {  },
          icon: const Icon(Icons.menu),),

        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 40),
            child: Center(
              child: Text("Welcome in Electronic shop",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ]

      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Stack(

                  children: [
                    const SizedBox(
                      height: kDefaultPadding /2,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 70),
                      decoration: const BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        )
                      ),
                    ),
                    //class home product
                    ListView.builder(
                      itemCount: products.length,
                      itemBuilder:(context, index) =>  ProductCard(
                        itemIndex: index,
                        product: products[index],

                      ),)
                  ],
                ),
            )
          ],
        ),

      ),
    );
  }
}

