import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vendorapp/screens/mainhome.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/vendorSide/profile.dart';
import 'package:vendorapp/vendorSide/servicesList.dart';
import 'package:vendorapp/widgets/BTitle2.dart';
import 'package:vendorapp/widgets/heading2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/screens/mainhome.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/widgets/heading2.dart';
import 'package:flutter/material.dart';
import 'package:vendorapp/widgets/mainHomeVendor.dart';
import 'package:vendorapp/widgets/title3.dart';
import 'package:vendorapp/widgets/title4.dart';
import 'package:vendorapp/widgets/title5.dart';

import '../../widgets/link.dart';
import '../../widgets/multiText.dart';

class JobDetails2 extends StatelessWidget {
  const JobDetails2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xff034047),
        title: Text("Job Details"),
      ),
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(0.4),
                border: Border.all(color: Colors.red,width: 0.8)
              ),
              child: Padding(
                padding:EdgeInsets.all(8.0),
                child: Multi(color: Colors.red, subtitle: "Pending", weight: FontWeight.bold, size: 25),
              ),
            ),
            SizedBox(height: 15.h,),
            Container(
              height:100.h,
              width: double.infinity,
              color: Color.fromARGB(255, 200, 196, 196),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Multi(color: Colors.black, subtitle: 'Job Type', weight: FontWeight.bold, size: 10),
                        Multi(color: Colors.black, subtitle: 'Job Type', weight: FontWeight.normal, size: 10),
                      ],
                    ),
                    Divider(color:Colors.black ,thickness: 1,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Multi(color: Colors.black, subtitle: 'Job Type', weight: FontWeight.bold, size: 10),
                        Multi(color: Colors.black, subtitle: 'Job Type', weight: FontWeight.normal, size: 10),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h,),
            Multi(color: Colors.black, subtitle: "Description", weight: FontWeight.bold, size: 14),
            SizedBox(height: 7.h,),
            Multi(color: Colors.black, subtitle: "x jqs xj d cdkc j dcj wcd n d k cd nx csdci wjcd na s cwj cjwi cjw cwdnc sn cjwcdj ie jdcsnk kws cdjk cwoc w cdw jkdc jc wodc wdjo cjs ", weight: FontWeight.normal, size: 10),
            Link(linkText: "Check Job Location"),
            SizedBox(height: 7.h,),
            Container(
              height: 50.h,
              width: double.infinity,
              color: Color.fromARGB(255, 211, 208, 208),
              child: Padding(
                padding:EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month,color: Colors.amber,),
                        SizedBox(width: 2.w,),
                        Multi(color: Colors.black, subtitle: "28 April 2022", weight: FontWeight.bold, size: 11)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.timelapse,color: Colors.amber,),
                        SizedBox(width: 2.w,),
                        Multi(color: Colors.black, subtitle: "05:30 pm", weight: FontWeight.bold, size: 11)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 7.h,),
            Container(
              height: 50.h,
              width: double.infinity,
              color: Colors.grey,
              child: Padding(
                padding:EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Multi(color: Colors.black, subtitle: "Service Amount", weight: FontWeight.bold, size: 11),
                    Multi(color: Colors.black, subtitle: "\$ 700", weight: FontWeight.bold, size: 11)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
                            height: 48.h,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                              
                                  // Navigator.push(
                                  // context,
                                  // MaterialPageRoute(builder: (context) => Terms()),);
                                
                                
                              },
                              child: Text("Accept Job"),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Color(0xff034047)),
                              ),
                            )),
             SizedBox(height: 20.h,),
            Container(
                            height: 48.h,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                              
                                  // Navigator.push(
                                  // context,
                                  // MaterialPageRoute(builder: (context) => Terms()),);
                                
                                
                              },
                              child: Text("Reject Job"),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Color(0xff034047)),
                              ),
                            ))
          ],
        ),
      ),
    );
  }
}
