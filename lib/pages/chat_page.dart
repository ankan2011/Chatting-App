import 'package:chat_app/utils/colors.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                      child: Icon(
                        Icons.arrow_back_ios,color: Colors.white,)),
                  SizedBox(width: MediaQuery.of(context).size.width/5,),
                  Text("Ankan Panja",
                  textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),)
                ],
              ),
            ),

            SizedBox(height: 20,),

            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10,),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight:  Radius.circular(30),
                  )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),

                              )),
                          child: Text("Hey how are you ?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,fontSize: 20,
                          ),),
                        )
                      ],
                    ),

                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 13),
                          padding: EdgeInsets.all(13),
                          decoration: BoxDecoration(color: Colors.grey,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30),

                              )),
                          child: Text("I'm fine !",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,fontSize: 20 ,
                            ),),
                        )
                      ],
                    ),

                    Spacer(),

                    Container(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(color: AppColors.primaryColor,borderRadius: BorderRadius.circular(60)),
                            child: Icon(Icons.mic,color: Colors.white,size: 35,),
                          ),

                          SizedBox(width: 10,),

                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(color: Color(0xffececf8),borderRadius: BorderRadius.circular(10)),
                              child: TextField(
                                decoration: InputDecoration(border: InputBorder.none,
                                hintText: "Write a message...",
                                suffixIcon: Icon(Icons.attach_file)),

                              ),
                            ),
                          ),

                          SizedBox(width: 10,),

                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(color: AppColors.primaryColor,borderRadius: BorderRadius.circular(60)),
                            child: Icon(Icons.send,color: Colors.white,size: 30,),
                          ),
                          SizedBox(width: 10,),
                        ],
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
