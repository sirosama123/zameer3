import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/widgets/multiText.dart';
import 'package:vendorapp/widgets/subhead.dart';


class MyJobRect extends StatelessWidget {
  const MyJobRect({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amber,width: 0.5),
        color: Colors.white,

      ),
      child: Padding(
        padding:EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Colors.blue,
                      ),
                      SizedBox(height: 4.h,),
                      Multi(color: Color(0xff034047), subtitle: "Jane Jonas", weight: FontWeight.bold, size: 12)
                    ],
                  ),
                  Container(
                    height: 70.h,
                    width: 1.5.w,
                    color:Color.fromARGB(255, 86, 82, 82) ,
                  )
                ],
              )
              ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Multi(color: Color(0xff034047), subtitle: "Jane Jonas", weight: FontWeight.bold, size: 12),
                  Multi(color: Color(0xff034047), subtitle: "Jane Jonas", weight: FontWeight.bold, size: 12),
                  Multi(color: Color(0xff034047), subtitle: "Jane Jonas", weight: FontWeight.bold, size: 12)
                ],
              )
              ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Multi(color: Color.fromARGB(255, 86, 82, 82), subtitle: "Jane Jonas", weight: FontWeight.normal, size: 12),
                  Multi(color: Color.fromARGB(255, 86, 82, 82), subtitle: "Jane Jonas", weight: FontWeight.normal, size: 12),
                  Multi(color: Color.fromARGB(255, 86, 82, 82), subtitle: "Jane Jonas", weight: FontWeight.normal, size: 12)
                ],
              )
              ),
          ],
        ),
      ),
    );
  }
}