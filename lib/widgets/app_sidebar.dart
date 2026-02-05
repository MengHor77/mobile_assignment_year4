import 'package:flutter/material.dart';
import 'package:mobile_year4/screens/login_view.dart';

class AppSidebar extends StatelessWidget {
  final String currentRoute;
  const AppSidebar({super.key, this.currentRoute = 'Home'});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // 1. Sidebar Header
          const UserAccountsDrawerHeader(
            accountName: Text('Nita Vann'),
            accountEmail: Text('account@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf4NlFls31qGMTqzjbaNgxmoNwClN9140-A&s',
              ),
            ),
          ),

          // 2. Navigation Menu Items
          _HoverableMenuItem(title: 'Home', icon: Icons.home, isActive: currentRoute == 'Home'),
          _HoverableMenuItem(title: 'Books', icon: Icons.menu_book_rounded, isActive: currentRoute == 'Books'),
          _HoverableMenuItem(title: 'Order List', icon: Icons.receipt_long_rounded, isActive: currentRoute == 'Order List'),
          _HoverableMenuItem(title: 'Best Selling Books', icon: Icons.workspace_premium, isActive: currentRoute == 'Best Selling Books'),
          _HoverableMenuItem(title: 'Book PDF Free', icon: Icons.picture_as_pdf_rounded, isActive: currentRoute == 'Book PDF Free'),
          _HoverableMenuItem(title: 'Contact Us', icon: Icons.support_agent_rounded, isActive: currentRoute == 'Contact Us'),
          _HoverableMenuItem(title: 'About Us', icon: Icons.import_contacts_rounded, isActive: currentRoute == 'About Us'),

          // 3. Logout Item (Standard ListTile)
          ListTile(
            leading: const Icon(Icons.logout_rounded, color: Colors.red),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginView()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}

// --- Helper Widget to Handle Hover/Active States with If-Else ---
class _HoverableMenuItem extends StatefulWidget {
  final String title;
  final IconData icon;
  final bool isActive;

  const _HoverableMenuItem({
    required this.title,
    required this.icon,
    required this.isActive,
  });

  @override
  State<_HoverableMenuItem> createState() => _HoverableMenuItemState();
}

class _HoverableMenuItemState extends State<_HoverableMenuItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    // Variables to hold the colors determined by our If-Else logic
    Color currentTileColor;
    Color contentColor;

    // Background Color Logic
    if (widget.isActive) {
      currentTileColor = Colors.blue;
    } else if (isHovered) {
      currentTileColor = Colors.green.withValues(alpha: 0.3);
    } else {
      currentTileColor = Colors.transparent;
    }

    // Icon and Text Color Logic
    if (widget.isActive || isHovered) {
      contentColor = Colors.white;
    } else {
      contentColor = Colors.blue;
    }

    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: ListTile(
        tileColor: currentTileColor,
        leading: Icon(widget.icon, color: contentColor),
        title: Text(
          widget.title,
          style: TextStyle(
            color: contentColor,
            fontWeight: widget.isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        onTap: () {
          Navigator.pop(context);
          // Future navigation logic goes here
        },
      ),
    );
  }
}