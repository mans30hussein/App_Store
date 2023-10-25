
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/screens/detailes_screen.dart';

import '../../models/products.dart';
import '../colors_app.dart';

class ProductCard extends StatelessWidget {
  ProductCard({super.key, required this.itemIndex, required this.product,});
  final int itemIndex;
  final Product product;
// late final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      margin: const EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
        horizontal: kDefaultPadding,
      ),
      height: 190,
      // color: Colors.green,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailesScreen()),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  boxShadow:[
                    BoxShadow(
                      offset: Offset(0 , 15),
                      blurRadius: 25,
                      color: Colors.black12,
                    )
                  ]
              ),
            ),
            Positioned(

              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                ),
                height: 160,
                width: 200,
                child: Image.asset(product.images ,fit: BoxFit.cover,),
              ),

            ),
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  //  crossAxisAlignment: CrossAxisAlignment.start,
                  //// mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height:30),
                    Text(
                     product.title, style: const TextStyle(
                      fontSize: 18,
                      fontWeight:FontWeight.w400,

                    ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      child: Text(
                        product.subtitle,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5, // 30 px padding
                        vertical: kDefaultPadding / 5, // 5 px padding
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Text("Price : ${product.price}\$"),
                    ),

                  ],
                ),

              ),
            )


          ],
        ),
      ),
    );
  }
}