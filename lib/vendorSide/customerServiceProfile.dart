import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/vendorSide/stepper1.dart';
import 'package:vendorapp/widgets/labelsField.dart';
import 'package:vendorapp/widgets/subhead.dart';
import 'package:vendorapp/widgets/titleTune.dart';


class CustomerServiceProfile extends StatelessWidget {
  const CustomerServiceProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: TitleTune(heading: "Name Person", color: Colors.white, weight: FontWeight.bold, size: 21),
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
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                    radius: 35.r,
                    backgroundColor: Color(0xff034047),
                    child:CircleAvatar(
                      radius: 33.r,
                      backgroundColor: Colors.amber,
                    ) ,
                  ),
                  SizedBox(width: 5.w,),
                  TitleTune(heading: "Name Person", color: Colors.black, weight: FontWeight.bold, size: 16),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone,color: Color(0xff034047),),
                      SizedBox(width: 20.w,),
                      Icon(Icons.message,color: Color(0xff034047),)
                    ],
                  )
                ],
              ),
               Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                    radius: 35.r,
                    backgroundColor: Colors.transparent,
                    
                  ),
                  SizedBox(width: 5.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(heading: "Job Task", color: Colors.black, weight: FontWeight.normal, size: 12),
                      TitleTune(heading: "Wash Basin Sink Problem", color: Colors.black, weight: FontWeight.bold, size: 16),
                    ],
                  ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                    radius: 35.r,
                    backgroundColor: Colors.transparent,
                    
                  ),
                  SizedBox(width: 5.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(heading: "Date", color: Colors.black, weight: FontWeight.normal, size: 12),
                      TitleTune(heading: "10-10-2023", color: Colors.black, weight: FontWeight.bold, size: 16),
                    ],
                  ),
                  SizedBox(width: 30.w,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(heading: "Time", color: Colors.black, weight: FontWeight.normal, size: 12),
                      TitleTune(heading: "10-10-2023", color: Colors.black, weight: FontWeight.bold, size: 16),
                    ],
                  ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                    radius: 35.r,
                    backgroundColor: Colors.transparent,
                    
                  ),
                  SizedBox(width: 5.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(heading: "Address", color: Colors.black, weight: FontWeight.normal, size: 12),
                      Row(
                        children: [
                          Container(
                            width: 200.w,
                            child: TitleTune(heading: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.", color: Colors.black, weight: FontWeight.bold, size: 14)),
                        CircleAvatar(
                          radius: 20.r,
                          backgroundColor: Color(0xff034047),
                          child: Icon(CupertinoIcons.location),
                        )
                        ],
                      ),
                    ],
                  ),
                 
                    ],
                  ),
                ],
              ),
              
              Stepper1(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Container(
                            height: 40.h,
                            width: 130.w,
                            child: ElevatedButton(
                              onPressed: () {
                               
                                  //   Navigator.push(
                                  // context,
                                  // MaterialPageRoute(builder: (context) => TypeCategory(categoryName: catName.toString(), type: type)),);
                                 
                              },
                              child: Row(children: [
                                Icon(Icons.cancel,color: Colors.white,),
                                SizedBox(width: 5.w,),
                                Text("Cancel")
                              ]),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.red),
                              ),
                            )),
                             Container(
                            height: 40.h,
                            width: 130.w,
                            child: ElevatedButton(
                              onPressed: () {
                               
                                  //   Navigator.push(
                                  // context,
                                  // MaterialPageRoute(builder: (context) => TypeCategory(categoryName: catName.toString(), type: type)),);
                                 
                              },
                              child: Row(children: [
                                Icon(Icons.check_circle,color: Colors.white,),
                                SizedBox(width: 5.w,),
                                Text("Accept Job")
                              ]),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green),
                              ),
                            )),
                            
                ],
              ),
              SizedBox(height: 10.h,),
            ],
          ),
        ),
      ),
    );
  }
}