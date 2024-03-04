import 'package:flutter/material.dart';
import 'package:login_page/sign_up_page.dart';
import 'package:login_page/signin.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
      double w = MediaQuery.of(context).size.width;
      double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
              Text('Authentication',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),

              SizedBox(height: 20,),

              Container(
                
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.pink,),
                child: TextButton(onPressed: () {
                
                            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),            );
                          }, child: Text('Sign In',)),
              ),
          
           SizedBox(height: 20,),

           Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.pink),
             child: TextButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
                       }, child: Text('Sign Up')),
           ),

          ]),
  
      ),
     
        
    );
  }
}