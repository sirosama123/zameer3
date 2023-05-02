import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:vendorapp/boarding_screen/presentation/contentModel.dart';
import 'package:vendorapp/screens/mainhome.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/screens/terms.dart';
import 'package:vendorapp/screens/testing.dart';
import 'package:vendorapp/vendorSide/vendorHome.dart';
import 'package:vendorapp/widgets/callout.dart';
import 'package:vendorapp/widgets/description.dart';
import 'package:vendorapp/widgets/forgotLink.dart';
import 'package:vendorapp/widgets/heading.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:vendorapp/widgets/labelsField.dart';


class LoginAdmin extends StatelessWidget {
  const LoginAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
  @override
  final _formKey = GlobalKey<FormState>();
  bool statee = false;
  String? uuid;
    return Scaffold(
      body: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 35.h),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
            
            
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Heading(heading: "Admin Log in")),
                     
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Labels(heading: "Email", color: Color(0xff034047)),
                      Container(
                        child: TextFormField(
                          controller: email,
                          style: TextStyle(
                            color:Color(0xff034047) 
                          ),
                          decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Color(0xff034047)),   
                          ),  
                          focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff034047)),
                              ),  
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff034047) ,
                            ),
                            prefixIconColor: Color(0xff034047)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Labels(heading: "Password", color: Color(0xff034047)),
                      Container(
                        child: TextFormField(
                          controller: password,
                          style: TextStyle(
                            color:Color(0xff034047) 
                          ),
                          decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(      
                          borderSide: BorderSide(color: Color(0xff034047)),   
                          ),  
                          focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Color(0xff034047)),
                              ),  
                            prefixIcon: Icon(
                              Icons.password,
                              color: Color(0xff034047) ,
                            ),
                            prefixIconColor: Color(0xff034047)
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h,),
                      Row(
                        children: [
                          Container(),
                          GestureDetector(
                            onTap: (){
                              
                            },
                            child: ForgotLink(link: "Forgot password?", color: Color(0xff034047)))
                        ],
                      )
                    ],
                  ),
                 
                 
                  SizedBox(height: 10.h,),
                  statee==false?Container(
                          height: 48.h,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                              
                                // Navigator.push(
                                // context,
                                // MaterialPageRoute(builder: (context) => Terms()),);
                              }
                              
                            },
                            child: Text("Log in"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff034047)),
                            ),
                          )):Center(child: CircularProgressIndicator(color: Colors.white,),),
                  
                ],
              ),
            ),
          ),
        ) ,
    );
  }
}