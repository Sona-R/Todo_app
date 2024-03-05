import 'dart:html';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ImagePicker _picker =ImagePicker();
  XFile ? image;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),

                 Stack(
                   children: [
                     CircleAvatar(
                       radius: 64,
                       backgroundImage: ExactAssetImage("assets/images/person1.png"),
                     ),
                     Positioned(child: IconButton(onPressed:() async{

    image = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {


    });









                     }, icon: Icon(Icons.add_a_photo),
                     ),

                       bottom: -10,
                       left: 80,
                     ),
                   ],
                 ),


              SizedBox(
                height: 30,
              ),
              Text("Name:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(
                height: 8,
              ),
              Text("phone no.:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

            ],
          ),
        ),
      ),

    );
  }
}
