import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Home.dart';
import 'package:camera/camera.dart';
//import 'f'

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp-clone',
      theme: new ThemeData(
        primaryColor: new Color(0xff075e54),
        accentColor: new Color(0xff25D366),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(cameras: cameras),
    );
  }
}
