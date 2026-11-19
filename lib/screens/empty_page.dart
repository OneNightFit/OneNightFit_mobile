import 'package:flutter/material.dart';
import 'package:onenightfit_mobile/widgets/left_drawer.dart';

class EmptyPage extends StatelessWidget {
  final String title;

  const EmptyPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const LeftDrawer(),
      body: Center(
        child: Text(
          'Halaman $title',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}