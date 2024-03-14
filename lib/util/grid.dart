import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return  GridView(
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
           );
  }
}