import 'package:chatgpt_ai_clone/themes/colors.dart';
import 'package:flutter/material.dart';

class SendButton extends StatefulWidget {
  const SendButton({super.key});

  @override
  State<SendButton> createState() => _SendButtonState();
}

class _SendButtonState extends State<SendButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true; 
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false; 
        });
      },
      child: Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: isHovered ? AppColors.proSendButton:AppColors.sendButton,
          borderRadius: BorderRadius.circular(25.0)
        ),
        child: Icon(
          Icons.arrow_upward,
          color: AppColors.sendIconButton,
          size: 24,
        ),
      ),
    );
  }
}