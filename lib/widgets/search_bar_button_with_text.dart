import 'package:chatgpt_ai_clone/themes/colors.dart';
import 'package:flutter/material.dart';

class SearchBarButtonWithText extends StatefulWidget {
  final IconData icon;
  final String text;
  const SearchBarButtonWithText({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  State<SearchBarButtonWithText> createState() => _SearchBarButtonWithTextState();
}

class _SearchBarButtonWithTextState extends State<SearchBarButtonWithText> {
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
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: isHovered ? AppColors.proSearchButton:null,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: AppColors.iconColor,  
            ),
      
            const SizedBox(width: 3,),
      
            Text(
              widget.text, 
              style: TextStyle(
                color: AppColors.searchBarText
              ),
            ),
          ],
        ),
      ),
    );
  }
}