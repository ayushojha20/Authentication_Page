
import 'package:flutter/material.dart';
import 'package:login_page/sign_up_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    TextEditingController emailController =TextEditingController();
    TextEditingController passwordController= TextEditingController();

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
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Text('Hello',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,),
          child: Text('Sign In into your account',style: TextStyle(fontSize:15,fontWeight: FontWeight.w200,color: Colors.grey)),
        ),
      
      SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: w*0.5,
          height: 50,
          child: TextField(
            controller: emailController,
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),hintText: 'Username',prefixIcon: Icon(Icons.email),),
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
            controller: passwordController,
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),hintText: 'Password',prefixIcon: Icon(Icons.password,)),
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
       
        child: Center(child: Text('Sign In',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),)),
      ),
    ),
    
    SizedBox(height: 5,),
    Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        children: [
         
          Text('Dont have account?',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w200,color: Colors.grey),),
          InkWell(child: Text('Create',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w200,color: Colors.blue),),onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
            );
          },),
          
        ],
      ),
    ),





      ]),

    ),
    );
      }
}