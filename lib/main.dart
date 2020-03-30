import 'package:flutter/material.dart';
import 'package:learning_animals/screens/welcome_screen.dart';
import 'package:ui_size_config/ui_size_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UISizeConfig(
        context: context,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizeConfig().isDevicePortrait
            ? 0.1 * SizeConfig.heightMultiplier
            : 0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          brightness: Brightness.light,
        ),
      ),
      body: WelcomeScreenElements(),
    );
  }
}
