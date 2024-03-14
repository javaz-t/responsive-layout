import 'package:flutter/material.dart';
import 'package:responsive_demo/responsive/desktop_scaffold.dart';
import 'package:responsive_demo/responsive/mobiel_scaffold.dart';
import 'package:responsive_demo/responsive/responsive_layout.dart';
import 'package:responsive_demo/responsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(mobileScaffold: MobileScaffold()
      ,desktopScaffold: DesktopScaffold(), tabletScaffold: TabletScaffold(),),
    );
  }
}
