import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(

      body: Container(
        height: h,
        width: w,

        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Welcome Paglu',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),

          SizedBox(height: 20,),

          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
            child: Center(child: Text('Sign Out')),

          ),
        ]),
      ),
    );
  }
}