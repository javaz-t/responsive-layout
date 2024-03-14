
import 'package:flutter/material.dart';
import 'package:responsive_demo/const.dart';
import 'package:responsive_demo/util/lsit_view.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: mybackgroundColor,
      appBar: AppBar(),
      drawer: myDrawer,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(aspectRatio: 4 ,child: GridView(
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
             children: List.generate(4, (index) {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container( 
                   color: Colors.green,
                   child: Center(
                           child: Text(
                             'Item $index',
                             style: const TextStyle(color: Colors.white, fontSize: 20),
                           ),
                   ),
                 ),
               );
             }),
           ),),
          const MyListView()
          ],
        ),
      ), 
    );
  }
}