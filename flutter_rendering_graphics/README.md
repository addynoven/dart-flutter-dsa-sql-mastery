# 🎨 Flutter Rendering Pipeline, Custom Painters & Animations

A hands-on, production-grade Flutter practice suite covering the **3-Tree Rendering Pipeline**, **`CustomPainter` & `Canvas`**, **Implicit & Explicit Animations**, and **Matrix4 3D Transformations**.

---

## 🚀 Features

- 🌲 **Flutter 3-Tree Architecture**: Understand how `Widget` (Configuration), `Element` (Lifecycle bridge), and `RenderObject` (Layout, Paint, Hit-Testing) work together.
- 🎨 **Canvas & Custom Painters**: Draw custom charts, shapes, smooth bezier curves, particle effects, and shimmer painters using `Paint` and `Path`.
- 🎬 **Animations Pipeline**: Master implicit animations (`AnimatedContainer`), explicit animations (`AnimationController`, `Tween`, `CurvedAnimation`), `Hero` transitions, and `Matrix4` 3D card flips.

---

## 📌 Quick Links
- 📋 **[Track Your Graphics Progress on todo_graphics.md](todo_graphics.md)**
- ⚡ **[Flutter CustomPainter Docs](https://api.flutter.dev/flutter/widgets/CustomPainter-class.html)**
- ⚡ **[Flutter Animations Guide](https://docs.flutter.dev/development/ui/widgets/animation)**

---

## 💡 Rendering & Graphics Cheat Sheet

### 1. Flutter 3-Tree Architecture

```text
1. Widget Tree       -> Immutable UI Configuration (Fast to create & rebuild)
2. Element Tree      -> Persistent Lifecycle & State Bridge (Manages Element tree diffing)
3. RenderObject Tree -> Calculates Layout Constraints, Paints Pixels, and Performs Hit-Testing
```

---

### 2. Canvas & Paint Basics Cheat Sheet

```dart
class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    // Draw Circle at center
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, paint);

    // Draw Smooth Bezier Curve Path
    final path = Path()
      ..moveTo(0, size.height)
      ..quadraticBezierTo(size.width / 2, 0, size.width, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
```

---

## 🚀 How to Run Exercises

1. Install dependencies:
   ```bash
   cd flutter_rendering_graphics
   flutter pub get
   ```

2. Run any topic lesson or scenario as a Flutter App on Linux Desktop:
   ```bash
   # Run Custom Pie Chart Scenario:
   flutter run -d linux lib/part2_interview_scenarios/01_custom_pie_chart.dart

   # Run 3D Card Flip Scenario:
   flutter run -d linux lib/part2_interview_scenarios/09_3d_card_flip_animation.dart
   ```
