import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vendorapp/widgets/dashboardSquare.dart';
import 'package:vendorapp/widgets/heading2.dart';
import 'package:vendorapp/widgets/jobs.dart';
import 'package:vendorapp/widgets/squares.dart';
import 'package:vendorapp/widgets/title5.dart';
import 'package:vendorapp/widgets/wideSquaresDb.dart';
import '../../../provider/provider1.dart';
import '../../../widgets/titleTune.dart';
import '../../widgets/myjobRect.dart';


class MyJobs extends StatefulWidget {
  const MyJobs({super.key});

  @override
  State<MyJobs> createState() => _MyJobsState();
}

class _MyJobsState extends State<MyJobs> {
  @override
   String? _selectedItem;
  Widget build(BuildContext context) {
    List<String> status=['ongoing','pending','completed'] ;
    return Scaffold(
         appBar: AppBar(
          leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () => Navigator.of(context).pop(),
  ), 
          backgroundColor: Color(0xff034047),
          title: Text("My Jobs"),
        ),
        body: Padding(
          padding:EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
                        SizedBox(height: 30.h,),
                         Container(
                                width: 230.w,
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 2),
                                    borderRadius: BorderRadius.circular(20.r)),
                                child: Padding(
                                  padding:EdgeInsets.only(top: 1.h,bottom: 1.h,right: 10.w,left: 10.w),
                                  child: Container(
                                    width: 200,
                                    child: DropdownButton<String>(
                                      hint: Text("select status"),
                                      isExpanded: true,
                                      value:_selectedItem, // set initial value
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _selectedItem=newValue;
                                        });
                                      },
                                      items: status.map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
        
                              SizedBox(height: 30.h,),
                              MyJobRect(),
                              SizedBox(height: 7.h,),
                              MyJobRect(),
                              SizedBox(height: 7.h,),
                              MyJobRect(),
            ],
          ),
        ) ,
    );
  }
}