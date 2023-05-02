import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/screens/postList.dart';
import 'package:vendorapp/widgets/post_task_list.dart';
import 'package:vendorapp/widgets/smallDesc.dart';
import 'package:vendorapp/widgets/subhead.dart';
import 'package:vendorapp/widgets/title1.dart';
import 'package:vendorapp/widgets/title3.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../widgets/BTitle2.dart';
import '../widgets/labelsField.dart';


class PostDetail extends StatefulWidget {
  const PostDetail({super.key});

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
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
          title: Text("Detail"),
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 10.h,),
              Center(
                 child: ToggleSwitch(
                  minWidth: 90.0,
                  minHeight: 40.0,
                  fontSize: 16.0,
                  initialLabelIndex: 0,
                  activeBgColor: [Colors.green],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.grey[900],
                  totalSwitches: 4,
                  labels: ['Open', 'Assigned', 'Completed','Reviewed'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
              ),
               ),
              SizedBox(height: 10.h,),
              Center(child: Title1(heading: "Job Task", color: Colors.black)),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.pink,
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Color.fromARGB(255, 13, 75, 125),
                      child: Image.asset("assets/images/user.png",height: 35.h,width: 35.w,),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Labels(heading: "Posted By", color: Color(0xff034047)),
                      SubHead(heading: "Name of Person", color: Colors.black)
                    ],
                  )
                  ],),
                SDescription(description: "2 hours ago")
                ],
              ),
              SizedBox(height: 10.h,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.pink,
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Color.fromARGB(255, 13, 75, 125),
                      child: Icon(CupertinoIcons.location,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Labels(heading: "Location", color: Color(0xff034047)),
                      SubHead(heading: "Karachi", color: Colors.black)
                    ],
                  )
                  ],),
                  SubHead(heading: "View on Map", color: Colors.green),
          
                ],
              ),
              SizedBox(height: 10.h,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.pink,
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Color.fromARGB(255, 13, 75, 125),
                      child: Icon(CupertinoIcons.calendar,color: Colors.white,),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Labels(heading: "Due Date", color: Color(0xff034047)),
                      SubHead(heading: "10-09-2023", color: Colors.black)
                    ],
                  )
                  ],),
                  Container()              
                ],
              ),
              SizedBox(height: 20.h,),
              Container(
                height: 150.h,
                width: double.infinity,
                color: Color(0xffD7DBDE),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Title3(heading: "TASK BUDGET ESTIMATE", color: Colors.black),
                    BTitle2(heading: "RS 1000", color: Colors.green),
                    BTitle2(heading: "Awaiting Offer", color: Colors.black),
          
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              BTitle2(heading: "Task Detail", color: Color(0xff034047)),
              SizedBox(height: 10.h,),
              Title3(heading: "5 roomsa have to clean", color: Colors.black),
              SizedBox(height: 20.h,),
              BTitle2(heading: "Add Attachments to your Task", color: Color(0xff034047)),
              SizedBox(height: 10.h,),
               Container(
                height: 30.h,
                width: 140.w,
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(CupertinoIcons.camera),
                      Text("Attach files(s)")
                    ],
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.green),
                  ),
                )),
              SizedBox(height: 20.h,),
              BTitle2(heading: "Offers", color: Color(0xff034047)),
              SizedBox(height: 10.h,),
             
             
                 Container(
                height: 150.h,
                width: double.infinity,
                color: Color(0xffD7DBDE),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/offer.png",height: 100.h,width: 100.h,),
                    Title3(heading: "Waitnig for Offers", color: Color(0xff8C8D8F))
          
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              BTitle2(heading: "Comments", color: Color(0xff034047)),
              SizedBox(height: 10.h,),
              SubHead(heading: '''Comment belo for more details, Please do not share personal information, email, phone, SkypeID or website''', color: Color(0xff8C8D8F)),
              SizedBox(height: 10.h,),
              Container(
  // margin: EdgeInsets.all(15.0),
  height: 110.h,
  child: Row(
    children: [
      CircleAvatar(
        radius: 25,
        backgroundColor: Colors.pink,
        child: CircleAvatar(
          radius: 23,
          backgroundColor: Color.fromARGB(255, 13, 75, 125),
          child: Image.asset("assets/images/user.png",height: 25.h,width: 25.w,),
        ),
      ),     
      SizedBox(width: 5.w,),
      Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 5,
                  color: Colors.grey)
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Add a Comment...",
                            hintStyle: TextStyle( color:     Colors.green),
                            border: InputBorder.none),
                      ),
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                        IconButton(
                            icon: Icon(Icons.attachment ,  color: Colors.green,size: 30.sp,),
                            onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: IconButton(
                              icon: Icon(Icons.send ,  color: Colors.green,size: 40.sp,),
                              onPressed: () {},
                          ),
                        ),
                       ],
                     )
                  ],
                ),
              ),
              // IconButton(
              //   icon: Icon(Icons.photo_camera ,  color: Colors.blueAccent),
              //   onPressed: () {},
              // ),
             
            ],
          ),
        ),
      ),

      
    ],
  ),
) ,
SizedBox(height: 10.h,),
SubHead(heading: "Be the first one to comment...", color: Color(0xff8C8D8F)),
 SizedBox(height: 20.h,),   
 Container(
                          height: 48.h,
                          width:150.w,
                           decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                
                              ),
                          child: ElevatedButton(
                            onPressed: () {
                               Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Post_List()),);
                            },
                            child: Text("Post List",style: TextStyle(color: Color(0xff034047),fontWeight: FontWeight.w500),),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                            ),
                )
              ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}