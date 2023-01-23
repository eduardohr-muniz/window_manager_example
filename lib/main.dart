import 'package:flutter/material.dart';

import 'package:window_manager/window_manager.dart';
import 'package:window_manager_example/model/header_window.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(800, 600),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HeaderWindow(),
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    windowManager.minimize();
                    Future.delayed(Duration(seconds: 2), () {
                      windowManager.focus();
                    });
                  },
                  child: Text("Focus 2 seconds"))
            ],
          ),
        )
      ],
    ));
  }
}
