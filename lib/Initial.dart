import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/admin/adminHome.dart';
import 'package:vendorapp/boarding_screen/presentation/contentModel.dart';
import 'package:vendorapp/boarding_screen/presentation/onBoarding.dart';
import 'package:vendorapp/screens/mainhome.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/screens/terms.dart';
import 'package:vendorapp/screens/testing.dart';
import 'package:vendorapp/vendorSide/createAccount.dart';
import 'package:vendorapp/vendorSide/loginVendor.dart';
import 'package:vendorapp/vendorSide/numberAdd.dart';
import 'package:vendorapp/widgets/callout.dart';
import 'package:vendorapp/widgets/description.dart';
import 'package:vendorapp/widgets/heading.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:vendorapp/widgets/labelsField.dart';


class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                  height: 48.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnBoarding()),);
                    },
                    child: Text("Customer App"),
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
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FixerSignin()),);
                    },
                    child: Text("Vendor App"),
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
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdminHome()),);
                    },
                    child: Text("Admin Panel"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff034047)),
                    ),
                  )),
          ],
        ),
      ),
    );
  }
}