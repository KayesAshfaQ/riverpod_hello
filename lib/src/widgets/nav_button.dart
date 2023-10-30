import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String label;
  final Widget navPage;

  const NavButton({
    super.key,
    required this.label,
    required this.navPage,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => navPage,
          ),
        );
      },
      child: Text(label),
    );
  }
}
