import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/screens/mainhome.dart';
import 'package:vendorapp/screens/signin.dart';
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

import '../../widgets/multi5.dart';
import '../../widgets/titleTune.dart';

class BookingHist extends StatelessWidget {
  const BookingHist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(1, 1),
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 15)
          ]),
      child: Padding(
        padding:EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(
                          heading: "Name",
                          color: Colors.grey,
                          weight: FontWeight.bold,
                          size: 10),
                      SizedBox(
                        height: 3.h,
                      ),
                      Multi5(
                          subtitle: "Abdul Sami",
                          color: Colors.black,
                          weight: FontWeight.bold,
                          size: 18)
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(
                          heading: "OrderId",
                          color: Colors.grey,
                          weight: FontWeight.bold,
                          size: 10),
                      SizedBox(
                        height: 3.h,
                      ),
                      Multi5(
                          subtitle: "97951vy15",
                          color: Colors.black,
                          weight: FontWeight.bold,
                          size: 15)
                    ],
                  ),
                ), 
              ],
            ),
            SizedBox(height: 7.h,),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(
                          heading: "Slot",
                          color: Colors.grey,
                          weight: FontWeight.bold,
                          size: 10),
                      SizedBox(
                        height: 3.h,
                      ),
                      Multi5(
                          subtitle: "16:00-18:00",
                          color: Colors.black,
                          weight: FontWeight.bold,
                          size: 11)
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(
                          heading: "Date",
                          color: Colors.grey,
                          weight: FontWeight.bold,
                          size: 10),
                      SizedBox(
                        height: 3.h,
                      ),
                      Multi5(
                          subtitle: "10-6-23",
                          color: Colors.black,
                          weight: FontWeight.bold,
                          size: 11)
                    ],
                  ),
                ), 
              ],
            ),
            SizedBox(height: 7.h,),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(
                          heading: "Service",
                          color: Colors.grey,
                          weight: FontWeight.bold,
                          size: 10),
                      SizedBox(
                        height: 3.h,
                      ),
                      Multi5(
                          subtitle: "Cleaning",
                          color: Colors.black,
                          weight: FontWeight.bold,
                          size: 11)
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(
                          heading: "Amount",
                          color: Colors.grey,
                          weight: FontWeight.bold,
                          size: 10),
                      SizedBox(
                        height: 3.h,
                      ),
                      Multi5(
                          subtitle: "3000",
                          color: Colors.black,
                          weight: FontWeight.bold,
                          size: 11)
                    ],
                  ),
                ), 
              ],
            ),
            SizedBox(height: 7.h,),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(
                          heading: "Payment mode",
                          color: Colors.grey,
                          weight: FontWeight.bold,
                          size: 10),
                      SizedBox(
                        height: 3.h,
                      ),
                      Multi5(
                          subtitle: "16:00-18:00",
                          color: Colors.black,
                          weight: FontWeight.bold,
                          size: 11)
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTune(
                          heading: "Status",
                          color: Colors.grey,
                          weight: FontWeight.bold,
                          size: 10),
                      SizedBox(
                        height: 3.h,
                      ),
                      Multi5(
                          subtitle: "Confirmed",
                          color: Colors.black,
                          weight: FontWeight.bold,
                          size: 11)
                    ],
                  ),
                ), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}
