import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vendorapp/widgets/heading2.dart';
import 'package:vendorapp/widgets/title4.dart';
import 'package:vendorapp/widgets/title5.dart';
import '../screens/reviewsLista.dart';
import 'mainAdminHome.dart';
import 'subScreens/serviceslist.dart';
import '../vendorSide/userList.dart';


class AdminHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xff034047)),
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            
            children: [
              CircleAvatar(
                radius: 24.r,
                backgroundColor: Colors.pink,
                child: CircleAvatar(
                      radius: 22.r,
                      child:
                          Image.asset("assets/images/user.png",height: 30.h,width: 30.w,),
                      backgroundColor: Colors.blue,
                    ),
              ),
              SizedBox(width: 5.w,),
              Column(
                children: [
                  Title4(heading: "Muhammad Ali", color: Color(0xff034047), weight: FontWeight.w600,),
                  Title5(heading: "Home-52/A Shah Faisal Town Khi", color: Color(0xff034047), weight: FontWeight.w600)
                ],
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff034047),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
             
              Container(
                color: Color(0xff034047),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: Container(
                    color: Color(0xff034047),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.graph_circle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Heading2(
                            color: Colors.white,
                            heading: 'Dashboard',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        color: Colors.white,
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.person,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Heading2(
                            color: Colors.white,
                            heading: 'User',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        color: Colors.white,
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.person_3,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Heading2(
                            color: Colors.white,
                            heading: 'Vendor',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        color: Colors.white,
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.folder,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Heading2(
                            color: Colors.white,
                            heading: 'Service Category',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        color: Colors.white,
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Icon(
                             Icons.star,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Heading2(
                            color: Colors.white,
                            heading: 'List Of Service Reviews',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        color: Colors.white,
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.map,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Heading2(
                            color: Colors.white,
                            heading: 'Banners',
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        color: Colors.white,
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.work,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Heading2(
                            color: Colors.white,
                            heading: 'Booking Orders',
                          )
                        ],
                      ),
                     SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        color: Colors.white,
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.settings_solid,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Heading2(
                            color: Colors.white,
                            heading: 'Settings',
                          )
                        ],
                      ),
                    
                      
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              
            ],
          ),
        ),
      ),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
           AdminHomeM(),
           UserList(),
          ServicesList(),
         ReviewLists(),
            Container(
              color: Colors.blue,
            ),
          ],
        ),
      ),
     
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            activeColor: Color(0xff034047),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(CupertinoIcons.person_3),
            title: Text('Users'),
            activeColor: Color(0xff034047),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(CupertinoIcons.briefcase),
            title: Text(
              'Services',
            ),
            activeColor: Color(0xff034047),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(CupertinoIcons.star),
            title: Text('Reviews'),
            activeColor: Color(0xff034047),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
