import 'package:chat_app/utils/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Image.asset("assets/hi.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,),

                  SizedBox(width: 10,),

                  Text(
                    textAlign: TextAlign.center,
                    "Hello,",
                    style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)
                    ,),

                  Text(
                    textAlign: TextAlign.center,
                    " Ankan",
                    style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)
                    ,),

                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.person),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Welcome To",
                style: TextStyle(color: Colors.white70,
                    fontSize: 24,fontWeight: FontWeight.bold)
                ,),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                textAlign: TextAlign.center,
                "ChatUp",
                style: TextStyle(color: Colors.white,
                    fontSize: 40,fontWeight: FontWeight.bold),
                ),
            ),

            SizedBox(height: 20,),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(color: Color(0xffececf8),borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search Username...",
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),

                    Material(
                      elevation: 4.0,
                        borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        // padding: EdgeInsets.only(top: 10,left: 4,right: 4,bottom: 10),
                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset("assets/ankan.png",
                              fit: BoxFit.cover,
                              height: 50,
                              width: 50,
                              ),
                            ),

                            SizedBox(width: 20,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center ,
                              children: [
                                SizedBox(height: 4,),
                                Text(
                                  "Ankan Panja",
                                  style: TextStyle(
                                      fontSize: 18,fontWeight: FontWeight.w500),
                                  ),

                                Text(overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  "Hello, how are you ?",
                                  style: TextStyle(
                                    color: Colors.black38,
                                      fontSize: 18,fontWeight: FontWeight.w500)
                                  ,),
                              ],
                            ),

                            Spacer(),
                            Text(
                              "2:30 PM",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,fontWeight: FontWeight.bold)
                              ,),


                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
