import 'package:chatgpt_ai_clone/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomSideNavBarButton extends StatefulWidget {
  final String iconPath1;
  final String iconPath2;
  final bool isCollapsed;
  final Color? iconColor;
  const CustomSideNavBarButton({
    super.key,
    required this.iconPath1,
    required this.iconPath2,
    required this.isCollapsed,
    this.iconColor,
  });

  @override
  State<CustomSideNavBarButton> createState() => _CustomSideNavBarButtonState();
}

class _CustomSideNavBarButtonState extends State<CustomSideNavBarButton> {
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
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: isHovered ? AppColors.proSideNavBarButton:null,
          borderRadius: BorderRadius.circular(25.0)
        ),
        child: Image.asset(
          (isHovered && (widget.isCollapsed == true)) ? widget.iconPath2:widget.iconPath1,
          width: 30,
          height: 30,
          color: widget.iconColor ?? AppColors.iconColor,
        ),
      ),
    );
  }
}