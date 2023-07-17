import 'package:first_flutter_project_android_studio/snackbarTest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: snackbaTest(),));
}

class MyHomeClass extends StatelessWidget {
  String appTitle = "Drawer demo";

  MyHomeClass({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: appTitle,
      home: TextClass(),
    );
  }
}

class TextClass extends StatefulWidget {
  TextClass({super.key});

  @override
  State<StatefulWidget> createState() => TextClasState();
}

class TextClasState extends State<TextClass> {
  int selectedItem = 0;
  static List<Widget> selectedMenu = <Widget>[
    const Text("First Item"),
    const Text("second Item"),
    const Text("third Item"),
  ];

  void onItemClicked(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Demo"),
      ),
      body: Center(
        child: selectedMenu[selectedItem],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('i am header'),
            ),
            ListTile(
              title: const Text("Home"),
              onTap: () {
                onItemClicked(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Business"),
              onTap: () {
                onItemClicked(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("School"),
              onTap: () {
                onItemClicked(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
