import 'package:chatgpt_ai_clone/services/chat_web_service.dart';
import 'package:chatgpt_ai_clone/widgets/typing_indicator.dart';
import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

class ContentSection extends StatefulWidget {
  const ContentSection({super.key});

  @override
  State<ContentSection> createState() => _ContentSectionState();
}

class _ContentSectionState extends State<ContentSection> {

  String fullResponse = "";

  final customMarkdownConfig = MarkdownConfig(configs: [
    CodeConfig(
      style: TextStyle(
        color: Colors.greenAccent,
        backgroundColor: Colors.black,
        fontFamily: 'monospace',
      ),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder(
          stream: ChatWebService().contentStream, 
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return TypingIndicator();
            }

            fullResponse += snapshot.data!['data'];
            return MarkdownWidget(
              data: fullResponse,
              shrinkWrap: true,
              config: customMarkdownConfig,
            );
          }
        ),
      ],
    );
  }
}