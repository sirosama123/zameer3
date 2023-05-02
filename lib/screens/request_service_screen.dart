import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/boarding_screen/presentation/contentModel.dart';
import 'package:vendorapp/screens/confirmation_booking.dart';
import 'package:vendorapp/screens/mainhome.dart';
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


class RequestService extends StatefulWidget {
  String service;
   RequestService({super.key,required this.service});

  @override
  State<RequestService> createState() => _RequestServiceState();
}

class _RequestServiceState extends State<RequestService> {
      String? _chosenValue;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
         appBar: AppBar(
          leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          backgroundColor: Color(0xff034047),
          title: Text("Request Service"),
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(                  
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Labels(heading: "Your Address", color: Color(0xff034047)),
                        Container(
                          child: TextFormField(
                            
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
                                Icons.home_filled,
                                color: Color(0xff034047) ,
                              ),
                              
                            ),
                            
                          ),
                        ),
                        SizedBox(height: 20.h,),
                         Padding(
                           padding:  EdgeInsets.symmetric(horizontal: 5.w),
                           child: Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color:Color(0xff034047) ,
                      blurRadius: 6.0,
                      spreadRadius: 1.0,
                      offset: Offset(0.0, 0.0),
                      // Shadow position
                    ),
                  ],
                ),
                height:120.h,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Labels(heading: "Select Date", color: Color(0xff034047)),
                SizedBox(height: 5.h,),
                GestureDetector(
                  onTap: (){
                    showDatePicker (
                      context: context, 
                      initialDate:DateTime(2023) , 
                      firstDate: DateTime(2023), 
                      lastDate: DateTime(2024)
                      );
                  },
                  child: Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                            image: AssetImage(
                  'assets/images/date.png'),
                            fit: BoxFit.fill,
                    ),
                    
                  ),
                              ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Labels(heading: "Select Time", color: Color(0xff034047)),
                SizedBox(height: 5.h,),
                GestureDetector(
                  onTap: (){
                            showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title:   Labels(heading: "PLease Select Time",color: Colors.blue,),
                    content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
               Divider(),
               GestureDetector(child: Labels(heading: "9:00AM - 9:30AM",color: Colors.blue,),onTap: (){setState(() {
                 
               });  Navigator.of(ctx).pop();
                                    },),
               Divider(),
               GestureDetector(child:  Labels(heading: "9:00AM - 9:30AM",color: Colors.blue,),onTap: (){setState(() {
                
               });Navigator.of(ctx).pop();},),
               Divider(),
               GestureDetector(child:  Labels(heading: "9:00AM - 9:30AM",color: Colors.blue,),onTap: (){setState(() {
                 
               }); Navigator.of(ctx).pop();},),
               Divider(),
               GestureDetector(child:  Labels(heading: "9:00AM - 9:30AM",color: Colors.blue,),onTap: (){setState(() {
                 
               }); Navigator.of(ctx).pop();},),
               Divider(),
               GestureDetector(child:  Labels(heading: "9:00AM - 9:30AM",color: Colors.blue,),onTap: (){setState(() {
                 
               });Navigator.of(ctx).pop();},),
               Divider(),
               GestureDetector(child:  Labels(heading: "9:00AM - 9:30AM",color: Colors.blue,),onTap: (){setState(() {
                
               }); Navigator.of(ctx).pop();},),
               Divider(),
               GestureDetector(child:  Labels(heading: "9:00AM - 9:30AM",color: Colors.blue,),onTap: (){setState(() {
                 
               });Navigator.of(ctx).pop();},),
               Divider(),
            ],
          ),
        ),
                  actions: <Widget>[
                    TextButton(
                     onPressed: () {
                        Navigator.of(ctx).pop();},
                      child: Container(
                        color: Color(0xff2b578e),
                        padding: const EdgeInsets.all(14),
                        child: const Text("Yes",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              );
                  },
                  child: Container(
                  height: 80.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/clock.png'),
                      fit: BoxFit.fill,
                    ),
                    
                  ),
                              ),
                )
              ],
            )
                  ],
                ),
          
                ),
                         )
                      ],
                    ),
                    SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Labels(heading: "Service Information:", color: Color(0xff034047)),
                  Labels(heading: "Service Name", color: Color(0xff034047)),
                ],
              ),
              SizedBox(height: 20.h,),
              Labels(heading: "Describe Service In Detail:", color: Color(0xff034047)),
              SizedBox(height: 5.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 5.w),
                  child: Container(
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 181, 175, 175),
                    boxShadow: [
                      BoxShadow(
                        color:Color(0xff034047) ,
                        blurRadius: 6.0,
                        spreadRadius: 1.0,
                        offset: Offset(0.0, 0.0),
                        // Shadow position
                      ),
                    ],
                  ),
                  height:150.h,
                  width: double.infinity,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Title3(heading: "Upload Image", color: Colors.white),
                    Labels(heading: "PNG & JPEG are allowed", color: Colors.black),
                    Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
            child: Container(
              height: 80.h,
              width: double.infinity,
              
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                        BoxShadow(
                          color:Colors.white ,
                          blurRadius: 6.0,
                          spreadRadius: 1.0,
                          offset: Offset(0.0, 0.0),
                          // Shadow position
                        ),
                      ],
              ),
              child: Image.asset("assets/images/download.png"),
            ),
                    )
                  ],
                  )
                  ),
                ),
                SizedBox(height: 20.h,),
               Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 20.w),
                 child: Container(
                  width: double.infinity,
                   child: DropdownButton<String>(
            onChanged: (ValueKey){
          
            },
            focusColor:Colors.white,
            value: _chosenValue,
            //elevation: 5,
            style: TextStyle(color: Colors.white),
            iconEnabledColor:Colors.black,
            items: <String>[
              'Android',
              'IOS',
              'Flutter',
              'Node',
              'Java',
              'Python',
              'PHP',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
            value: value,
            child: Text(value,style:TextStyle(color:Colors.black),),
              );
            }).toList(),
            hint:Text(
              "Terms & Conditions\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
              style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500),
            ),
            
          ),
                 ),
               ),
               SizedBox(height: 20.h,),
            Padding(
                 padding:  EdgeInsets.symmetric(horizontal: 20.w),
                 child: Container(
                  width: double.infinity,
                   child: DropdownButton<String>(
            onChanged: (ValueKey){
          
            },
            focusColor:Colors.white,
            value: _chosenValue,
            //elevation: 5,
            style: TextStyle(color: Colors.white),
            iconEnabledColor:Colors.black,
            items: <String>[
              'Android',
              'IOS',
              'Flutter',
              'Node',
              'Java',
              'Python',
              'PHP',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
            value: value,
            child: Text(value,style:TextStyle(color:Colors.black),),
              );
            }).toList(),
            hint:Text(
              "How It works\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t",
              style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500),
            ),
            
          ),
                 ),
               ),
               SizedBox(height: 20.h,),
                Container(
                          height: 48.h,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ConfirmationBooking(service: widget.service,)),);
                            },
                            child: Text("Request Send"),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff034047)),
                            ),
                )
              ),
              // SizedBox(height: 10.h,),
               
                
              ],
            ),
          ),
        ),

        
      ),
    );
  }
}