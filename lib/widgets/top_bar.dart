import 'package:chatgpt_ai_clone/themes/colors.dart';
import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ChatGpt
          MouseRegion(
            onEnter: (event) {
              setState(() {
                isHovered1 = true;
              }); 
            },
            onExit: (event) {              
              setState(() {
                isHovered1 = false;
              }); 
            },
            child: Container(
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.only(top: 10.0, left: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: isHovered1 ? AppColors.proSearchButton:null,
              ),
              child: Text(
                "ChatGPT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
      
          // get plus
          MouseRegion(
            onEnter: (event) {
              setState(() {
                isHovered2 = true;
              }); 
            },
            onExit: (event) {              
              setState(() {
                isHovered2 = false;
              }); 
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: isHovered2 ? AppColors.proPlusButton:AppColors.getPlusButton,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.auto_awesome,
                    color: Colors.white,
                  ),
      
                  const SizedBox(width: 5,),
      
                  Text(
                    "Get Plus",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
      
          GestureDetector(
            child: Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(5.0),
              margin: const EdgeInsets.only(top: 10.0, right: 10.0),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(25.0)
              ),
              child: Icon(
                Icons.logout, 
                color: Colors.white,
                size: 21,
              ),
            ),
          )
        ],
      ),
    );
  }
}