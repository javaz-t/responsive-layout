import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(shrinkWrap: true,itemCount: 10,itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 100,color: Colors.red,),
          );
         });
  }
}