import 'package:color_app/shades_page.dart';
import 'package:flutter/material.dart';
import 'list_item.dart';
import 'color_picker.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {

  // void navigateToShadePage(BuildContext context, MaterialAccentColor color) {
  //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
  //     return ShadesPage(color: color);
  //   }));
  // }

  void navigateToShadePageStatic(BuildContext context, MaterialAccentColor color){
    Navigator.pushNamed(context, '/shades', arguments: color);
  }

  void colorPickerStatic(BuildContext context){
    Navigator.pushNamed(context, '/picker');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colors'), centerTitle: true),
      body: ListView.builder(itemCount: Colors.accents.length,
      itemBuilder: (BuildContext context, int index) {

        return GestureDetector(
          onTap: () {
            // navigateToShadePage(context, Colors.accents.elementAt(index));
            navigateToShadePageStatic(context, Colors.accents.elementAt(index));
          },
          child: ListItem(
              color: Colors.accents.elementAt(index)), //add element at particular index,
        );
      },
    ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => colorPickerStatic(context),
        child: Icon(Icons.colorize),
      ),
    );
  }
}
