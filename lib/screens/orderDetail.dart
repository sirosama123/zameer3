import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:vendorapp/boarding_screen/presentation/contentModel.dart';
import 'package:vendorapp/screens/mainhome.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/screens/track_order.dart';
import 'package:vendorapp/widgets/description.dart';
import 'package:vendorapp/widgets/heading.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:vendorapp/widgets/labelsField.dart';
import 'package:vendorapp/widgets/link.dart';
import 'package:vendorapp/widgets/squares.dart';
import 'package:vendorapp/widgets/subhead.dart';
import 'package:vendorapp/widgets/title2.dart';
import 'package:vendorapp/widgets/title3.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../provider/provider1.dart';


class OrderDetail extends StatefulWidget {

   OrderDetail({super.key,});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    final Provider11 = Provider.of<Provider1>(context); 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
          leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          backgroundColor: Color(0xff034047),
          title: Text("Booking Confirmation"),
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
          child: Container(
            child: Column(
              children: [
                Title3(heading: "Customer Information:", color: Colors.black),
                SizedBox(height: 20.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 5.w),
                  child: Container(
                    child: Column(
                      children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.person,color:Color(0xff034047) ,),
                              SizedBox(width: 4.w,),
                              Labels(heading: "Customer Name ", color: Color(0xff034047)),
                            ],
                          ),
                          Labels(heading: "${Provider11.fullname.toString()}", color: Color(0xff034047)),
                        ],
                         ),
                        SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.phone,color:Color(0xff034047) ,),
                                SizedBox(width: 4.w,),
                                Labels(heading: "Phone Number ", color: Color(0xff034047)),
                              ],
                            ),
                            Labels(heading: "${Provider11.phone.toString()}", color: Color(0xff034047)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
                Title3(heading: "Service Details:", color: Colors.black),
                SizedBox(height: 20.h,),
                 Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 5.w),
                  child: Container(
                    child: Column(
                      children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.briefcase,color:Color(0xff034047) ,),
                              SizedBox(width: 4.w,),
                              Labels(heading: "Service Name ", color: Color(0xff034047)),
                            ],
                          ),
                          Labels(heading: "${Provider11.taskName}", color: Color(0xff034047)),
                        ],
                         ),
                        SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.calendar,color:Color(0xff034047) ,),
                                SizedBox(width: 4.w,),
                                Labels(heading: "Date", color: Color(0xff034047)),
                              ],
                            ),
                            Labels(heading: "${Provider11.taskdate}", color: Color(0xff034047)),
                          ],
                        ),
                         SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.clock,color:Color(0xff034047) ,),
                                SizedBox(width: 4.w,),
                                Labels(heading: "Time", color: Color(0xff034047)),
                              ],
                            ),
                            Labels(heading: "12:00PM - 02:00PM", color: Color(0xff034047)),
                          ],
                        ),
                         SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.money_dollar,color:Color(0xff034047) ,),
                                SizedBox(width: 4.w,),
                                Labels(heading: "Booking Charges", color: Color(0xff034047)),
                              ],
                            ),
                            Labels(heading: "Rs. ${Provider11.taskbudget}", color: Color(0xff034047)),
                          ],
                        ),
                         SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.home,color:Color(0xff034047) ,),
                                SizedBox(width: 4.w,),
                                Labels(heading: "Address", color: Color(0xff034047)),
                              ],
                            ),
                            Labels(heading: "${Provider11.address}", color: Color(0xff034047)),
                          ],
                        ),
                        SizedBox(height: 30.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.money_dollar,color:Color(0xff034047) ,),
                                SizedBox(width: 4.w,),
                                Labels(heading: "Booking Charges", color: Color(0xff034047)),
                              ],
                            ),
                            Labels(heading: "700", color: Color(0xff034047)),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.money_dollar,color:Color(0xff034047) ,),
                                SizedBox(width: 4.w,),
                                Labels(heading: "Total Charge", color: Color(0xff034047)),
                              ],
                            ),
                            Labels(heading: "${int.parse(Provider11.taskbudget.toString())+700}", color: Color(0xff034047)),
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(CupertinoIcons.money_dollar,color:Color(0xff034047) ,),
                                SizedBox(width: 4.w,),
                                Labels(heading: "Payment Mode", color: Color(0xff034047)),
                              ],
                            ),
                            Labels(heading: Provider11.paymentMethod, color: Color(0xff034047)),
                          ],
                        ),
                        SizedBox(height: 30.h,),
                        Container(
                          height: 48.h,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>MyApp2()),);
                            },
                            child: Text("Trace Order"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff034047)),
                            ),
                )
              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}