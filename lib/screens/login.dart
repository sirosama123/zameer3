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
import 'package:vendorapp/screens/testing.dart';
import 'package:vendorapp/widgets/callout.dart';
import 'package:vendorapp/widgets/description.dart';
import 'package:vendorapp/widgets/heading.dart';
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';
import 'package:vendorapp/widgets/labelsField.dart';
import 'package:vendorapp/widgets/smaillTitlebold.dart';

import '../provider/provider1.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? uuid;
  bool? statee;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final Provider11 = Provider.of<Provider1>(context); 
      List<String>? vendor;
  List<String>? user;
     void Login() async{
      FirebaseAuth auth = FirebaseAuth.instance;
      FirebaseFirestore db = FirebaseFirestore.instance;

      final Future<FirebaseApp> _initialization = Firebase.initializeApp();
      try {
        final UserCredential users = await auth.signInWithEmailAndPassword(
        email: email.text, password: password.text);

        setState(() {
          Provider11.uid = users.user!.uid;
          uuid =users.user!.uid;
          statee = false;
        });

         var data = await FirebaseFirestore.instance.
          collection("users").
          doc(users.user!.uid). 
          get();
   
          setState(() {
            Provider11.fullname=data['fullname'];
            Provider11.email=data['email'];
            Provider11.cnic = data['cnic'];
            Provider11.uid = data['uid'];
            Provider11.phone = data['phone'];
            Provider11.profile = data['profile'];
          });
          setState(() {
            statee = false;
          });
           await FirebaseFirestore.instance
        .collection("banners")
        .doc('X8xwi93SqrXE8ZeEoh5g')
        .get()
        .then((value) {
        setState(() {
           
         user = List.from(value.data()!['userapp']);
        });
                    
    });
          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp1(pics: user!,)),
                          );
     
      } 
        on FirebaseAuthException catch(e) {
        print(e);
        Fluttertoast.showToast(
          msg: "${e.message}",
          toastLength: Toast.LENGTH_SHORT,
      );
      }
    }  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffc6d8e2),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                              
                             mainAxisAlignment: MainAxisAlignment.center,
                        
                        
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Heading(heading: "User Log in")),
                        
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
                               validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Field is empty';
                                }
                                return null;
                              },
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
                               validator: (text) {
                                if (text == null || text.isEmpty) {
                                  return 'Field is empty';
                                }
                                return null;
                              },
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
                        ],
                      ),
                        
                     
                      SizedBox(height: 10.h,),
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stitle(linkText: "Forgot Password?"),
                      Stitle(linkText: "Remember me")
                    ],
                  ),
                  SizedBox(height: 10.h,),
                      Container(
                              height: 48.h,
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    Login();
                                  }
                                },
                                child: Text("Sign in"),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Color(0xff034047)),
                                ),
                              )),
                      SizedBox(height: 10.h,),
                      
                       Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Container(
                              height: 2.h,
                              width: 70.w,
                              color: Color(0xff034047),
                            ),
                            Text("OR",style: TextStyle(color: Color(0xff034047),fontSize: 20.sp),),
                            Container(
                              height: 2.h,
                              width: 70.w,
                              color: Color(0xff034047),
                            ),
                            ],
                          ),
                  ),
                  SizedBox(height: 10.h,),
                  
                  Row(
                    children: [
                       Container(
                              height: 48.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyApp1(pics: [],)),);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Callout(heading: "Signin with", color: Color.fromARGB(255, 17, 84, 138)),
                                    SizedBox(width: 4.w,),
                                    Image.asset("assets/images/facebook.png",height: 35.h,width: 35.w,)
                                  ],
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                              )),
                              SizedBox(width: 4.h,),
                               Container(
                              height: 48.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MyApp1(pics: [],)),);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Callout(heading: "Signin with", color: Color.fromARGB(255, 17, 84, 138)),
                                    SizedBox(width: 4.w,),
                                    Image.asset("assets/images/google.png",height: 35.h,width: 35.w,)
                                  ],
                                ),
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                ),
                              )),
                    ],
                  )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ) ,
      ),
    );
  }
}