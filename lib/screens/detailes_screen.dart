import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/presentation_layer/colors_app.dart';

class DetailesScreen extends StatelessWidget {
  DetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back , color: kPrimaryColor),
        ),
      ),
      body: Column(
        children: [
          Container(
         //   height: 400,
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),

            decoration: BoxDecoration(
              color:kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(kDefaultPadding*1.5),
                  height: size.width *.8,
                 // color: Colors.black,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: size.width * .7,
                        width: size.width * .7 ,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        shape: BoxShape.circle,
                        ),
                      ),
                      Image.asset("assets/images/airpod.png",
                        height: size.width *.75,
                        width: size.width *.75,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                           // margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(3),
                            height: 24,
                              width: 24,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red),
                            ),
                            child: Container(

                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),

          ),
        ],
      )
    );
  }
}
