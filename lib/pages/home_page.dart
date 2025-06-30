import 'package:chatgpt_ai_clone/widgets/side_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [ 
          SideNavBar(),
        ],
      ),
    );
  }
}