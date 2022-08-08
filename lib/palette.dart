import "package:flutter/material.dart";

class Palette {
  static const MaterialColor bToDark = const MaterialColor(
    0xff1180b6, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff0f72a3), //10%
      100: const Color(0xff0d628c), //20%
      200: const Color(0xff0b5175), //30%
      300: const Color(0xff09415d), //40%
      400: const Color(0xff09415d), //50%
      500: const Color(0xff09415d), //60%
      600: const Color(0xff073146), //70%
      700: const Color(0xff04212f), //80%
      800: const Color(0xff021017), //90%
      900: const Color(0xff000000), //100%
    },
  );
}
// const MaterialColor()
