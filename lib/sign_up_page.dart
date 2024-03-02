
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    List images =[
      "facebooklogo.png",
      "googlelogo.png",
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
       body: Container(
      width: w,
      height: h,
      color: Colors.white10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                     
                      width: w,
                      height: 200,
                      decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                             "img/login.jpg"
                            ),
                            fit: BoxFit.cover
                          )
                         ),
                      ),
               ],
             ),
      
      
      SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: w*0.5,
          height: 50,
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label: Text('Username')),
          ),
        ),
      ),
      
      SizedBox(height: 10,),
       Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: w*0.5,
          height: 50,
          child: TextField(
            
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label: Text('Password')),
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.only(left: 10,top: 5),
        child: Text('Forgot Password'),
      ),

    SizedBox(height: 10,),
    Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
           color: Colors.pink,
                  ),
        height: 30,
        width: 70,
       
        child: Center(child: Text('Sign Up',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),)),
      ),
    ),
    
    SizedBox(height: 10
    ,),
    Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Text('Sign up using page'),
        ],
      ),
    ),

    SizedBox(height: 10,),

    Wrap(
      // direction: Axis.vertical,
      children: 
        List<Widget>.generate(
          2,
          (int index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  "img/"+images[index]
                ),
              ),
            );
          }
        ),
      
      
    ),





      ]),

    ),
    );
  }
}