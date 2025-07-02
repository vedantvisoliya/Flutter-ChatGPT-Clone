import 'package:chatgpt_ai_clone/themes/colors.dart';
import 'package:chatgpt_ai_clone/widgets/content_section.dart';
import 'package:chatgpt_ai_clone/widgets/side_nav_bar.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String query;
  const ChatPage({
    super.key,
    required this.query,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideNavBar(), 

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                          decoration: BoxDecoration(
                            color: AppColors.searchBar,
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Text(
                            query, 
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10.0,),

                    ContentSection(),
                  ],
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
