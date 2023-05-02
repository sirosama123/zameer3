import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:vendorapp/screens/postTask/budget.dart';
import 'package:vendorapp/screens/post_detail.dart';
import 'package:vendorapp/widgets/link.dart';

import '../../provider/provider1.dart';
import '../../widgets/labelsField.dart';
import '../../widgets/title4.dart';
import '../../widgets/title5.dart';


class WhenWhere extends StatefulWidget {
  WhenWhere({super.key});

  @override
  State<WhenWhere> createState() => _WhenWhereState();
}

class _WhenWhereState extends State<WhenWhere> {
  @override
        TextEditingController location = TextEditingController();
  TextEditingController date = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
final Provider11 = Provider.of<Provider1>(context); 

    return Scaffold(
       appBar: AppBar(
          backgroundColor: Color(0xff034047),
          title: Title4(heading: "When & Where", color: Colors.white, weight: FontWeight.bold),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Labels(heading: "Task Location", color: Color(0xff034047)),
              Container(
                child: TextFormField(
                  validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Field is empty';
                                  }
                                  return null;
                                },
                  controller: location,
                  style: TextStyle(color: Color(0xff034047)),
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff034047)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff034047)),
                      ),
                      hintText: "eg DHA Karachi"),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Labels(
                  heading: "When do you want to start the work?",
                  color: Color(0xff034047)),
              SizedBox(
                height: 5.h,
              ),
              Container(
                child: TextFormField(
                  validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Field is empty';
                                  }
                                  return null;
                                },
                  controller: date,
                  style: TextStyle(color: Color(0xff034047)),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.calendar_month,
                        color: Color(0xff034047),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff034047)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff034047)),
                      ),
                      hintText: "02-10-2023"),
                ),
              ),
              SizedBox(height: 5.h,),
                Container(
                                height: 48.h,
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      Provider11.taskwhere=location.text;
                                      Provider11.taskdate=date.text;
                                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Budget()),
                            );
                                    }
                                  },
                                  child: Text("Next"),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Color(0xff034047)),
                                  ),
                                )),
            ],
          ),),
      ) ,
    );
  }
}