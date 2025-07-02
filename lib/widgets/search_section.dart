import 'package:chatgpt_ai_clone/pages/chat_page.dart';
import 'package:chatgpt_ai_clone/services/chat_web_service.dart';
import 'package:chatgpt_ai_clone/themes/colors.dart';
import 'package:chatgpt_ai_clone/widgets/search_bar_button.dart';
import 'package:chatgpt_ai_clone/widgets/search_bar_button_with_text.dart';
import 'package:chatgpt_ai_clone/widgets/send_button.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  final TextEditingController _queryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            "What can i help with?",
            style: const TextStyle(
              fontSize: 29
            ),
          ),

          const SizedBox(height: 30,),

          Container(
            width: 750,
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            decoration: BoxDecoration(
              color: AppColors.searchBar,
              borderRadius: BorderRadius.circular(21.0),
            ),
            child: Column(
              children: [
                TextField(
                  controller: _queryController,
                  cursorColor: Colors.white,
                  cursorWidth: 1.0,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Ask anything",
                    hintStyle: TextStyle(
                      color: AppColors.searchBarText,
                    )
                  ),
                ),

                const SizedBox(height: 10.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SearchBarButton(
                          icon: Icons.add, 
                        ),

                        SearchBarButtonWithText(
                          icon: Icons.tune, 
                          text: "Tools",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SearchBarButton(
                          icon: Icons.mic_none,
                        ),
                        
                        const SizedBox(width: 10.0,),

                        // send button
                        GestureDetector(
                          onTap: () {
                            if (_queryController.text.isNotEmpty){
                              ChatWebService().chat(_queryController.text.trim());
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => ChatPage(query: _queryController.text)
                                ),
                              );
                            }

                          },
                          child: SendButton()
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )
    );
  }
}