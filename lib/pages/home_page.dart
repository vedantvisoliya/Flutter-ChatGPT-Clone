import 'package:chatgpt_ai_clone/widgets/search_section.dart';
import 'package:chatgpt_ai_clone/widgets/side_nav_bar.dart';
import 'package:chatgpt_ai_clone/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [ 
          SideNavBar(),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: TopBar()),
           
                SearchSection(),
                
                const Spacer()
              ],
            ),
          )
        ],
      ),
    );
  }
}