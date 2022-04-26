import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final bool isDisabled;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback onPressed;
  final IconData? iconData;
  final Color? iconTint;
  final String? text;
  final bool roundedtrue;
  final EdgeInsets innerPadding;
  final Color borderColor;
  final double borderWidth;
  final double? roundedRadius;

  const CustomButton(
      {Key? key,
      required this.onPressed,
      this.isDisabled = false,
      this.buttonColor,
      this.text,
      this.textColor,
      this.iconData,
      this.iconTint,
      this.roundedtrue = false,
      this.roundedRadius,
      this.innerPadding = const EdgeInsets.all(0.0),
      this.borderColor = Colors.transparent,
      this.borderWidth = 1.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isTextPresent = text != null || text?.isNotEmpty == true;

    return OutlinedButton(
      // Disable click action
      onPressed: isDisabled ? null : onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Add Icon if provided
          (iconData == null)
              ? const SizedBox.shrink()
              : Padding(
                  padding: (isTextPresent)
                      // Padding between Icon and Text
                      ? const EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 0.0)
                      : const EdgeInsets.all(0.0),
                  child: Icon(iconData, color: isDisabled ? null : iconTint),
                ),
          // Add Text if provided
          (!isTextPresent)
              ? const SizedBox.shrink()
              : Text(
                  text!,
                )
        ],
      ),
      style: OutlinedButton.styleFrom(
          onSurface: Colors.white,
          // Set Border color and width
          side: BorderSide(color: borderColor, width: borderWidth),
          // Add padding to increase size of button
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0)
              .add(innerPadding),
          // Set custom disabled color
          backgroundColor: (isDisabled) ? Colors.grey : buttonColor,
          primary: textColor,
          // Enable rounding of button
          shape: (roundedtrue)
              ? ((roundedRadius == null)
                  ? const StadiumBorder()
                  : RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(roundedRadius!)))
              : null),
    );
  }
}
