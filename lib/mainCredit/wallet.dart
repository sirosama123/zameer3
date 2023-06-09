import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:provider/provider.dart';
import 'package:vendorapp/boarding_screen/presentation/contentModel.dart';
import 'package:vendorapp/screens/confirmation_booking.dart';
import 'package:vendorapp/screens/mainhome.dart';
import 'package:vendorapp/screens/post_detail.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/widgets/description.dart';
import 'package:vendorapp/widgets/heading.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:vendorapp/widgets/labelsField.dart';
import 'package:vendorapp/widgets/link.dart';
import 'package:vendorapp/widgets/squares.dart';
import 'package:vendorapp/widgets/title2.dart';
import 'package:vendorapp/widgets/title3.dart';
import 'dart:async';
import 'dart:io';

import '../../provider/provider1.dart';
import '../../widgets/post_task_list.dart';
import '../../widgets/titleTune.dart';



class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          title: TitleTune(heading: "Wallet", color: Colors.white, weight: FontWeight.bold, size: 21),
          actions: [
            Center(child: TitleTune(heading: "Total Earning", color: Colors.white, weight: FontWeight.bold, size: 12)),
          ],
          backgroundColor: Color(0xff034047),
          leading: GestureDetector(
            onTap: () async {
              Navigator.pop(context);
            },
            child: Container(
              height: 30.h,
              width: 30.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color(0xff034047),
                  Color.fromARGB(255, 4, 81, 89),
                ]),
                borderRadius: BorderRadius.circular(5.r),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 4, 81, 89),
                    offset: const Offset(0, 0),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),

        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TitleTune(heading: "\$420.00", color: Colors.white, weight: FontWeight.bold, size: 50),
                        SizedBox(height: 8.h,),
                        TitleTune(heading: "Available in wallet", color: Colors.white, weight: FontWeight.bold, size: 15)
                      ],
                    ),
                  ),
                ),
              )
            ),
          
            Expanded(
              flex: 2,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(height: 120.h,width: 120.w,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/send.png"))),),
                        SizedBox(height: 5.h,),
                        TitleTune(heading: "\$ send to Admin", color: Colors.white, weight: FontWeight.bold, size: 15),
                        
                       
                      ],
                    ),
                  ),
                ),
              ) 
            ),
            Expanded(
              flex: 2,
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(height: 120.h,width: 120.w,decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/earning.png"))),),
                        SizedBox(height: 5.h,),
                        TitleTune(heading: "\$ Earn Money", color: Colors.white, weight: FontWeight.bold, size: 15),
                        
                       
                      ],
                    ),
                  ),
                ),
              ) 
            ),
          ],
        ),
    );
  }
}