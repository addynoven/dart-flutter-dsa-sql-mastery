import 'dart:ui';

import 'package:flutter/material.dart';

class AppScrollBehavior extends MaterialScrollBehavior {
  // Override this method to explicitly allow mouse dragging alongside touch
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch, // Handles mobile finger dragging
    PointerDeviceKind.mouse, // Enables desktop/web mouse dragging!
  };
}
