




import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard<T> extends StatelessWidget {
  final   currentCat;
  // final Node<T> currentCat;

  const CategoryCard({Key? key, required this.currentCat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
         },
        child:Container(
          margin: const EdgeInsets.symmetric(vertical: 7),
          padding: const EdgeInsets.all(  7),
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(20),
          ),
          child:


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.account_circle, size: 70,)),
              // Image.asset(Images.logo)


              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: const Text('Airport Pickedup',style: TextStyle(height: 2),

                    ),
                  ),  SizedBox(
                    width: MediaQuery.of(context).size.width/2,
                    child: const Text(
                        'Reloaded 1 of 1434 libraries in 469ms (compile: 119 ms, reload: 197 ms, reassemble: 85 ms).'

                    ),
                  ),
                  SizedBox(height: 7,)
                  // K.sizedBoxH
                ],
              ),
              IconButton(onPressed: (){

              }, icon: const Icon(Icons.arrow_forward_ios_sharp ,size: 15,)),

            ],
          ),
        )
    );
  }
  }

