import 'package:chatgpt_ai_clone/themes/colors.dart';
import 'package:chatgpt_ai_clone/widgets/custom_side_nav_bar_button.dart';
import 'package:chatgpt_ai_clone/widgets/side_nav_bar_button.dart';
import 'package:flutter/material.dart';

class SideNavBar extends StatefulWidget {
  const SideNavBar({super.key});

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  bool isCollapsed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isCollapsed ? 70: 260,
      decoration: BoxDecoration(
        color: isCollapsed ? AppColors.background: AppColors.sideNavBar,
        border: Border(
          right: BorderSide(
            color: Colors.black,
            width: 0.5,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        )
      ),
      child: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: isCollapsed ? MainAxisAlignment.center:MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isCollapsed = false;
                        });
                      },
                      child: CustomSideNavBarButton(
                        iconPath1: "assets/chatgpt-logo.png", 
                        iconPath2: "assets/sidebar.png",
                        isCollapsed: isCollapsed,
                        iconColor: Colors.white,
                      ),
                    ),

                    isCollapsed ? const SizedBox()
                    :GestureDetector(
                      onTap: () {
                        setState(() {
                          isCollapsed = true;
                        });
                      },
                      child: CustomSideNavBarButton(
                        iconPath1: "assets/sidebar.png", 
                        iconPath2: "assets/sidebar.png",
                        isCollapsed: isCollapsed,
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 20,),
                
                SideNavBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.edit,
                  text: "New Chat",
                ),
                
                SideNavBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.search,
                  text: "Search Chat",
                ),
                
                SideNavBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.collections_bookmark_outlined,
                  text: "Library",
                ),

                const SizedBox(height: 20,),

                isCollapsed ? 
                const SizedBox():
                SideNavBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.play_circle_outline,
                  text: "Sora",
                ),
                
                isCollapsed ? 
                const SizedBox():
                SideNavBarButton(
                  isCollapsed: isCollapsed,
                  icon: Icons.grid_view,
                  text: "GPTs",
                ),
                
                isCollapsed ?
                const SizedBox():
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                      "Chats",
                      style: TextStyle(
                        color: AppColors.iconColor,
                        fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}