import 'package:chat_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.60,
              width: double.infinity,
              child:
                  Image.asset('assets/chat_fpage2.jpg',fit: BoxFit.fill,),
               ),

                  SizedBox(height: 30,),

                  Padding(
                    padding:  EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      textAlign: TextAlign.center,
                        "Discover the joy of chatting with friends around the world.",
                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
        
                  SizedBox(height: 30,),

                  Padding(
                    padding:  EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Connect people around the world for free",
                      style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.w500),),
                  ),
        
                  SizedBox(height: 40,),
        
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 70,
                        padding: EdgeInsets.only(top:6,bottom: 6,left: 30),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color:AppColors.primaryColor,borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Image.asset('assets/google.png',
                            height: 50,
                            width: 50,
                              fit: BoxFit.cover ,
                            ),
                            SizedBox(width: 20,),
                            Text(
                              textAlign: TextAlign.center,
                              "Sign in with google",
                              style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w500),),
        
        
        
                          ],
                        ),
                      ),
                    ),
                  )
        
        
        
        
        


          ],
        ),
      ),

    );
  }
}
