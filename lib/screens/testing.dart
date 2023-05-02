





import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/screens/mainhome.dart';

import 'package:vendorapp/screens/postTask/details.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/widgets/heading2.dart';
import 'package:flutter/material.dart';




import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/screens/mainhome.dart';
import 'package:vendorapp/screens/signin.dart';
import 'package:vendorapp/widgets/heading2.dart';

import 'package:flutter/material.dart';

import '../chatApp/allchatPersons.dart';



class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
 late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          actions: [
            Icon(Icons.filter_alt_sharp)
          ],
          backgroundColor: Color(0xff034047),
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search for something',
                        prefixIcon: Icon(Icons.search),),
                  ),
                ),
              ),
            ),
           drawer: Drawer(  
          child: ListView(
            children: [
              DrawerHeader(
                child: Image.asset("assets/images/logo2.jpg")
                ),
              SizedBox(height: 7.h,),
              Divider(
                color: Colors.white,
                height: 2.h,
              ),
              Container(
                color: Color(0xff034047),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 7.w),
                  child: Container(
                    color: Color(0xff034047),
                    child: Column(children: [
                    SizedBox(height: 15.h,),  
                      Row(
                    children: [
                      Icon(Icons.person,color: Colors.white,),
                      SizedBox(width: 10.w,),
                      Heading2(color: Colors.white, heading: 'Profile',)
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Divider(
                    color: Colors.white,
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Icon(Icons.chat,color: Colors.white,),
                      SizedBox(width: 10.w,),
                      Heading2(color: Colors.white, heading: 'Chat',)
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Divider(
                    color: Colors.white,
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Icon(Icons.luggage,color: Colors.white,),
                      SizedBox(width: 10.w,),
                      Heading2(color: Colors.white, heading: 'Order',)
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Divider(
                    color: Colors.white,
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Icon(Icons.share,color: Colors.white,),
                      SizedBox(width: 10.w,),
                      Heading2(color: Colors.white, heading: 'ShareApp',)
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Divider(
                    color: Colors.white,
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.white,),
                      SizedBox(width: 10.w,),
                      Heading2(color: Colors.white, heading: 'Rate us',)
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Divider(
                    color: Colors.white,
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone,color: Colors.white,),
                      SizedBox(width: 10.w,),
                      Heading2(color: Colors.white, heading: 'Contact us',)
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Divider(
                    color: Colors.white,
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Icon(Icons.privacy_tip,color: Colors.white,),
                      SizedBox(width: 10.w,),
                      Heading2(color: Colors.white, heading: 'Privacy',)
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Divider(
                    color: Colors.white,
                    height: 2.h,
                  ),
                    ]),
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                child: Container(
                          height: 48.h,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),);
                            },
                            child: Row(children: [
                              Text("Log out"),
                              SizedBox(width: 5.w,),
                              Icon(Icons.logout_outlined)
                            ],),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xff034047)),
                            ),
                          )),
              ),
             
            ],
            
          ),
         ) ,
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            MainHome(),
            UserAllChatPerson(),
            Container(color: Colors.green,),
            Container(color: Colors.blue,),
          ],
        ),
      ),
         floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff034047),
        onPressed: (() {
          Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Details()),);
        }),
        tooltip: 'Increment',
        child: Icon(CupertinoIcons.briefcase),
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
      items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
            activeColor: Color(0xff034047),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            title: Text('Chats'),
            activeColor: Color(0xff034047),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(CupertinoIcons.search),
            title: Text(
              'Search',
            ),
            activeColor: Color(0xff034047),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(CupertinoIcons.person),
            title: Text('Profile'),
            activeColor: Color(0xff034047),
            textAlign: TextAlign.center,
          ),
        ],
      ),
       
    );
  }
}