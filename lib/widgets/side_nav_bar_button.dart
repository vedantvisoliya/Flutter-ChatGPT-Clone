import 'package:chatgpt_ai_clone/themes/colors.dart';
import 'package:flutter/material.dart';

class SideNavBarButton extends StatefulWidget {
  final bool isCollapsed;
  final IconData icon;
  final String text;
  const SideNavBarButton({
    super.key,
    required this.isCollapsed,
    required this.icon,
    required this.text,
  });

  @override
  State<SideNavBarButton> createState() => _SideNavBarButtonState();
}

class _SideNavBarButtonState extends State<SideNavBarButton> {
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
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: isHovered ? AppColors.proSideNavBarButton : null,
        ),
        child: Row(
          children: [
            Icon(
              widget.icon,
              size: 21, 
              color: AppColors.iconColor,
            ),

            const SizedBox(width: 10,),

            widget.isCollapsed ? const SizedBox(): Text(widget.text, style: TextStyle(fontSize: 13),)
          ],
        ),
      ),
    );
  }
}