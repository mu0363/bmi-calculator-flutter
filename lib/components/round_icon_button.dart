import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  RoundIconButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(minHeight: 56, minWidth: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: FaIcon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
    );
  }
}
