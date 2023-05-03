import 'dart:developer';

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/boarding_screen/presentation/contentModel.dart';
import 'package:vendorapp/screens/all_services.dart';
import 'package:vendorapp/screens/service_provider.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/widgets/description.dart';
import 'package:vendorapp/widgets/heading.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:vendorapp/widgets/heading2.dart';
import 'package:vendorapp/widgets/labelsField.dart';
import 'package:vendorapp/widgets/link.dart';
import 'package:vendorapp/widgets/profile.dart';
import 'package:vendorapp/widgets/slider.dart';
import 'package:vendorapp/widgets/squares.dart';
import 'package:vendorapp/widgets/subhead.dart';
import 'package:vendorapp/widgets/title3.dart';

class MainHome extends StatefulWidget {
  List<String> pics;
  MainHome({super.key,required this.pics});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  int _currentIndex = 0;
  int _counter = 0;
  bool see = false;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       
        body: Container(
          child:Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                   Slider23(imgs: widget.pics),
                       Title3(heading: "All Services", color: Color(0xff034047)),
                SizedBox(height: 20.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ServiceProvider(uno: 'Electrician', nature: '',)),);
                              },
                              child: Square(
                                color1:Color(0xff034047) , color2: Colors.black, sub: "\tElectric\nServices", address: "assets/images/electric.png", nature: '',)),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ServiceProvider( uno: 'Plumber', nature: '',)),);
                              },
                              child: Square(color1:Color(0xff034047) , color2: Colors.black, sub: "Plumbing\nServices", address: "assets/images/plumbing.png", nature: '',)),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ServiceProvider(uno: 'Furniture', nature: '',)),);
                              },
                              child: Square(color1:Color(0xff034047) , color2: Colors.black, sub: "\t\t\t\t\t\t\t\t\t\t\tAc\nmaintainance", address: "assets/images/ac.png", nature: '',)),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ServiceProvider( uno: '3', nature: '',)),);
                              },
                              child: Square(color1:Color(0xff034047) , color2: Colors.black, sub: "HandyMan", address: "assets/images/mechanic.png", nature: '',)),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ServiceProvider( uno: '4', nature: '',)),);
                              },
                              child: Square(color1:Color(0xff034047) , color2: Colors.black, sub: "Fumigation", address: "assets/images/insecticide.png", nature: '',)),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ServiceProvider( uno: '5', nature: '',)),);
                              },
                              child: Square(color1:Color(0xff034047) , color2: Colors.black, sub: "\t\tHouse\nCleaning", address: "assets/images/cleaning.png", nature: '',)),
                          ],
                        ),
                       GestureDetector(child: Link(linkText: "see all"),onTap: (){
                  Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AllServices()),);
                  setState(() {
                    see=true;
                  });
                },),
                      ],
                    ),
                  ),
                  
                ),

               
                
                SizedBox(height: 20.h,),
                CarouselSlider(
              options: CarouselOptions(height: 140.h),
              items: [
                Profile(name: "arshad"),
                Profile(name: "nasir"),
                Profile(name: "shahid"),
                Profile(name: "sahir"),
                Profile(name: "nadeem"),
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                       margin:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                      width: MediaQuery.of(context).size.width,
                      height: 100.h,
                      child: Container(
                        decoration: BoxDecoration(   
                borderRadius: BorderRadius.circular(10.0),           
                      color: Colors.white,
                      boxShadow: [
                BoxShadow(
                  color: Color(0xff034047),
                  blurRadius: 6.0,
                  spreadRadius: 1.0,
                  offset: Offset(0.0, 0.0),
                  // Shadow position
                ),
              ],
            ),
            child: i,
                      )
                    );
                  },
                );
              }).toList(),
            )
                ],
              ),
            ),
          ) ,
        ),
     
          
      ),
      
    );
  }
}