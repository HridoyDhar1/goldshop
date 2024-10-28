import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({Key? key, required this.title, this.actions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: actions,
      backgroundColor: const Color(0xff00008B), // You can customize the color
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          // Add your menu action here
          Scaffold.of(context).openDrawer(); // Example action
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0); // Default AppBar height
}