import 'package:chatgpt_ai_clone/themes/colors.dart';
import 'package:flutter/material.dart';

class SearchBarButton extends StatefulWidget {
  final IconData icon;
  const SearchBarButton({
    super.key,
    required this.icon,
  });

  @override
  State<SearchBarButton> createState() => _SearchBarButtonState();
}

class _SearchBarButtonState extends State<SearchBarButton> {
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
          ],
        ),
      ),
    );
  }
}