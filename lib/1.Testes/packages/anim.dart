import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false, // importante para estabilidade
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animations Package Demo")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [

          // 🟦 1. CONTAINER TRANSFORM
          _containerTransform(context),

          const SizedBox(height: 12),

          // 🟩 2. SHARED AXIS
          _sharedAxis(context),

          const SizedBox(height: 12),

          // 🟨 3. FADE THROUGH
          _fadeThrough(context),

          const SizedBox(height: 12),

          // 🟪 4. FADE SCALE
          _fadeScale(context),

          const SizedBox(height: 12),

          _containerTransform(context),
        ],
      ),
    );
  }

  // ------------------ 🟦 CONTAINER TRANSFORM ------------------
  Widget _containerTransform(BuildContext context) {
    return OpenContainer(
      transitionDuration: const Duration(milliseconds: 700),
      closedElevation: 6,
      openElevation: 0,
      transitionType: ContainerTransitionType.fadeThrough,
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      openBuilder: (context, _) => const DemoPage(title: "Container Transform"),
      closedBuilder: (context, open) {
        return _tile(Colors.blue, "Container Transform", open);
      },
    );
  }

  // ------------------ 🟩 SHARED AXIS ------------------
  Widget _sharedAxis(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fadeThrough,
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      openBuilder: (context, _) => const SharedAxisPage(),
      closedBuilder: (context, open) {
        return _tile(Colors.green, "Shared Axis", open);
      },
    );
  }

  // ------------------ 🟨 FADE THROUGH ------------------
  Widget _fadeThrough(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fadeThrough,
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      openBuilder: (context, _) => const FadeThroughPage(),
      closedBuilder: (context, open) {
        return _tile(Colors.orange, "Fade Through", open);
      },
    );
  }

  // ------------------ 🟪 FADE SCALE ------------------
  Widget _fadeScale(BuildContext context) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fadeThrough,
      closedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      openBuilder: (context, _) => const FadeScalePage(),
      closedBuilder: (context, open) {
        return _tile(Colors.purple, "Fade Scale", open);
      },
    );
  }

  // ------------------ TILE UI ------------------
  Widget _tile(Color color, String text, VoidCallback open) {
    return GestureDetector(
      onTap: open,
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// ------------------ PÁGINA BASE ------------------
class DemoPage extends StatelessWidget {
  final String title;

  const DemoPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text(title, style: const TextStyle(fontSize: 24))),
    );
  }
}

// ------------------ SHARED AXIS PAGE ------------------
class SharedAxisPage extends StatelessWidget {
  const SharedAxisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Axis")),
      body: const Center(child: Text("Shared Axis Animation")),
    );
  }
}

// ------------------ FADE THROUGH PAGE ------------------
class FadeThroughPage extends StatelessWidget {
  const FadeThroughPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fade Through")),
      body: const Center(child: Text("Fade Through Animation")),
    );
  }
}

// ------------------ FADE SCALE PAGE ------------------
class FadeScalePage extends StatelessWidget {
  const FadeScalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fade Scale")),
      body: const Center(child: Text("Fade Scale Animation")),
    );
  }


}