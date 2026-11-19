import 'package:flutter/material.dart';
import 'package:onenightfit_mobile/screens/menu.dart';
import 'package:onenightfit_mobile/screens/empty_page.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  void _goTo(BuildContext context, String title) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => EmptyPage(title: title)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: colors.primary),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OneNightFit',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Your style, yours. Sewa outfit untuk semalam!',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_outline),
            title: const Text('Profile'),
            onTap: () => _goTo(context, 'Profile'),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard_outlined),
            title: const Text('Inspo'),
            onTap: () => _goTo(context, 'Inspo'),
          ),
          ListTile(
            leading: const Icon(Icons.checkroom_outlined),
            title: const Text('Catalog'),
            onTap: () => _goTo(context, 'Catalog'),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart_outlined),
            title: const Text('Cart'),
            onTap: () => _goTo(context, 'Cart'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Log Out', style: TextStyle(color: Colors.red)),
            onTap: () {
              Navigator.pop(context); // tutup drawer
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(content: Text('Log Out belum diimplementasikan')),
                );
            },
          ),
        ],
      ),
    );
  }
}