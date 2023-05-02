import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/widgets/subhead.dart';
import 'package:vendorapp/widgets/title3.dart';


class Profile extends StatelessWidget {
  String name;

   Profile({super.key,required this.name});
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                radius: 30.0,
                backgroundImage:
                    AssetImage("assets/images/user.png"),
                backgroundColor: Colors.blue,
              ),
              SizedBox(width: 10.w,),
              Column(
                children: [
                  Title3(heading: name, color: Colors.black),
                ],
              )
              ],
            ),

            Padding(
              padding:  EdgeInsets.only(left: 0.w),
              child: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}