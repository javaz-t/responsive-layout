
import 'package:flutter/material.dart';
var mybackgroundColor = Colors.grey[200];
var myDrawer = const Drawer(child: Column(
        children: [
          SizedBox(height: 30,),
          DrawerHeader(child: Icon(Icons.favorite_border),),
         
          ListTile(leading: Icon(Icons.home),title: Text('H O M E'),),
           ListTile(leading: Icon(Icons.person),title: Text('A C C O U N T'),),
            ListTile(leading: Icon(Icons.safety_check),title: Text('H O M E'),),
              ListTile(leading: Icon(Icons.settings),title: Text('S E T T I N G S '),),
        ],
      ),);