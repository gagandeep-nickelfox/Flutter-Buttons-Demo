import 'package:flutter/material.dart';

abstract class BaseButton extends StatelessWidget {
  final bool isDisabled;
  final Color? buttonColor;
  final VoidCallback onPressed;
  final bool roundedtrue;
  final EdgeInsets innerPadding;
  final Color borderColor;
  final double borderWidth;
  final double? roundedRadius;

  const BaseButton({
    Key? key,
    required this.onPressed,
    this.isDisabled = false,
    this.buttonColor,
    this.roundedtrue = false,
    this.roundedRadius,
    this.innerPadding = const EdgeInsets.all(0.0),
    this.borderColor = Colors.transparent,
    this.borderWidth = 1.0,
  }) : super(key: key);
}

class Button extends BaseButton {
  final Color? textColor;
  final String text;

  const Button(
      {Key? key,
      required VoidCallback onPressed,
      required this.text,
      this.textColor,
      Color? buttonColor,
      bool isDisabled = false,
      bool roundedtrue = false,
      double? roundedRadius,
      EdgeInsets innerPadding = const EdgeInsets.all(0.0),
      Color borderColor = Colors.transparent,
      double borderWidth = 1.0})
      : super(
            key: key,
            onPressed: onPressed,
            borderColor: borderColor,
            borderWidth: borderWidth,
            buttonColor: buttonColor,
            innerPadding: innerPadding,
            isDisabled: isDisabled,
            roundedRadius: roundedRadius,
            roundedtrue: roundedtrue);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      // Disable click action
      onPressed: isDisabled ? null : onPressed,
      child: Text(
        text,
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

class CustomIconButton extends BaseButton {
  final Color? icontint;
  final IconData icon;
  final Color? textColor;
  final String? text;

  const CustomIconButton(
      {Key? key,
      required VoidCallback onPressed,
      required this.icon,
      this.icontint,
      Color? buttonColor,
      bool isDisabled = false,
      bool roundedtrue = false,
      double? roundedRadius,
      EdgeInsets innerPadding = const EdgeInsets.all(0.0),
      Color borderColor = Colors.transparent,
      double borderWidth = 1.0,
      this.text,
      this.textColor})
      : super(
          key: key,
          onPressed: onPressed,
          borderColor: borderColor,
          borderWidth: borderWidth,
          buttonColor: buttonColor,
          innerPadding: innerPadding,
          isDisabled: isDisabled,
          roundedRadius: roundedRadius,
          roundedtrue: roundedtrue,
        );

  @override
  Widget build(BuildContext context) {
    final isTextPresent = text?.isEmpty != true && text != null;

    return OutlinedButton(
      // Disable click action
      onPressed: isDisabled ? null : onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
                  padding: (isTextPresent)
                      // Padding between Icon and Text
                      ? const EdgeInsets.fromLTRB(0.0, 0.0, 4.0, 0.0)
                      : const EdgeInsets.all(0.0),
                  child: Icon(icon, color: isDisabled ? null : icontint),
                ),
          // Display Text if provided
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
