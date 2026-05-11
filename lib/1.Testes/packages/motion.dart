import 'package:flutter/material.dart';
import 'package:motion/motion.dart';

const cardBorderRadius = BorderRadius.all(Radius.circular(25));

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Motion.instance.initialize();
  Motion.instance.setUpdateInterval(60.fps);

  runApp(const MotionDemoApp());
}

class MotionDemoApp extends StatelessWidget {
  const MotionDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MotionDemoPage(),
    );
  }
}

class MotionDemoPage extends StatefulWidget {
  const MotionDemoPage({super.key});

  @override
  State<MotionDemoPage> createState() => _MotionDemoPageState();
}

class _MotionDemoPageState extends State<MotionDemoPage> {
  bool _dialogShown = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkPermission();
    });
  }

  void _checkPermission() {
    if (Motion.instance.isPermissionRequired &&
        !Motion.instance.isPermissionGranted &&
        !_dialogShown) {
      _dialogShown = true;

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Permissão necessária'),
          content: const Text(
              'O iPhone pode pedir acesso ao giroscópio para esta animação funcionar.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Motion.instance.requestPermission();
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              'Motion Demo',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),

            // SEM motion
            Container(
              width: 280,
              height: 170,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: cardBorderRadius,
              ),
              child: const Center(child: Text("Sem Motion")),
            ),

            const SizedBox(height: 20),

            // COM motion
            Motion.elevated(
              elevation: 70,
              borderRadius: cardBorderRadius,
              child: Container(
                width: 280,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: cardBorderRadius,
                ),
                child: const Center(
                  child: Text(
                    "Com Motion",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text("Move o telemóvel 📱"),
          ],
        ),
      ),
    );
  }
}