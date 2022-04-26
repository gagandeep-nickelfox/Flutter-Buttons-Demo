import 'package:buttons_demo/buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final backgroundImageUrl =
      "https://images.unsplash.com/photo-1650829749149-2836d523733e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=684&q=80";

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
            backgroundImageUrl,
            fit: BoxFit.cover,
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 42.0,
                ),
                Button(
                  isDisabled: false,
                  onPressed: () {},
                  text: "Click me!",
                  roundedtrue: false,
                  innerPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                CustomIconButton(
                  isDisabled: false,
                  onPressed: () {},
                  buttonColor: colorScheme.secondary,
                  textColor: colorScheme.onSecondary,
                  icon: Icons.search,
                  text: "Click me!",
                  roundedtrue: false,
                  innerPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Button(
                  isDisabled: false,
                  onPressed: () {},
                  buttonColor: colorScheme.surface,
                  textColor: colorScheme.primary,
                  text: "Click me!",
                  roundedtrue: false,
                  innerPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Button(
                  isDisabled: false,
                  onPressed: () {},
                  buttonColor: Colors.transparent,
                  textColor: Colors.white,
                  text: "Click me!",
                  roundedtrue: false,
                  borderColor: Colors.white.withOpacity(0.4),
                  innerPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Button(
                  isDisabled: true,
                  onPressed: () {},
                  text: "Click me!",
                  roundedtrue: false,
                  innerPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomIconButton(
                      isDisabled: false,
                      onPressed: () {},
                      buttonColor: colorScheme.surface,
                      icon: Icons.close,
                      icontint: colorScheme.onSurface,
                      roundedtrue: true,
                      borderColor: Colors.grey.withOpacity(0.6),
                      borderWidth: 2.0,
                      innerPadding:
                          const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                    CustomIconButton(
                      isDisabled: true,
                      onPressed: () {},
                      buttonColor: colorScheme.surface,
                      roundedtrue: true,
                      icon: Icons.arrow_back,
                      icontint: Colors.black,
                    ),
                    CustomIconButton(
                      isDisabled: false,
                      onPressed: () {},
                      buttonColor: colorScheme.secondary,
                      icon: Icons.heart_broken_rounded,
                      icontint: colorScheme.onSecondary,
                      roundedtrue: true,
                      innerPadding:
                          const EdgeInsets.symmetric(horizontal: 40.0),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
