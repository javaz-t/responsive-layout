
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_demo/const.dart';
import 'package:responsive_demo/util/grid.dart';
import 'package:responsive_demo/util/lsit_view.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(),
      drawer:myDrawer,
      body: const SingleChildScrollView(
        child: Column(
          children: [ 
         AspectRatio(
          aspectRatio: 1 ,
           child: MyGridView()
         ),
        MyListView()
         ],
        ), 
      ),
    );
  }
}    