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
import '../provider/provider1.dart';


class Jobs1 extends StatelessWidget {
  String name;
  Jobs1({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    final stream1 = FirebaseFirestore.instance.collection('jobs').doc("xlN7IdbLeivO4OLuNTHA").collection("$name").snapshots();
     return StreamBuilder<QuerySnapshot>(
      stream: stream1,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }

        return ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
          Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return Jobs(value: data['charges'], date: data['date'], id: data['oid'], name: data['customer_name']);
             ListTile(
              title: Text(data['service']),
              
            );
          }).toList(),
        );
      },
    );
  }
}