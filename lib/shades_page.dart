import 'package:color_app/list_item.dart';
import 'package:flutter/material.dart';


class ShadesPage extends StatelessWidget {
  final MaterialAccentColor color;

  ShadesPage({required this.color});

  @override
  Widget build(BuildContext context) {
    final List<Color> accentShades = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700,
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Shades'), centerTitle: true, backgroundColor: color,),
    body: ListView.builder(
      itemCount: accentShades.length,
      itemBuilder: (BuildContext context, int index){
        return ListItem(color: accentShades.elementAt(index));
      },
        ),

    );
  }
}
