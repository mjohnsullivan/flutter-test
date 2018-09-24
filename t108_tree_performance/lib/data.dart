import 'dart:async';
import 'dart:math';
import 'dart:ui';

final promotions =
    Stream.periodic(const Duration(seconds: 1), (count) => count);

final random = Random();

Color getRandomColor() => Color.fromARGB(0xFF, 100 + random.nextInt(155),
    100 + random.nextInt(155), 100 + random.nextInt(155));
