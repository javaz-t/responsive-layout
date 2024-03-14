
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_demo/const.dart';
import 'package:responsive_demo/util/grid.dart';
import 'package:responsive_demo/util/lsit_view.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: mybackgroundColor,
  body: Row(
    children: [
      Container(width: 250,child: myDrawer),
      Expanded( flex: 3,child: SingleChildScrollView(
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
      ),),
      Expanded(
        flex: 1,
        child: Container(width: 10,
          color: Colors.red,
        ),
      )
    
    ],
  ), 
);
}
}  