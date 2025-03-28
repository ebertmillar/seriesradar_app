import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? buttonColor;
  final TextStyle? textStyle;

  const CustomFilledButton({
    super.key,
    this.onPressed,
    required this.text,
    this.buttonColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final buttonColor = this.buttonColor ?? Colors.blueAccent;

    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.6, // Más ancho
        height: 60, // Más alto
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            shadowColor: buttonColor.withAlpha(13),
            elevation: 6, // Efecto de sombra más notorio
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle ??
                const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
