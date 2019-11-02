import 'package:flutter/material.dart';
// import 'package:flutter_elements/screens/home.dart';
import 'package:flutter_elements/screens/longlistviews.dart';

void main() => runApp(ElementsApp());

class ElementsApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UI Elements',
//      home: HomeScreen(),
        home: Scaffold(
          appBar: AppBar(title: Text("ListView Elements"),),
          body: getListView(),
          floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint("Floating Action Button Clicked"),
            child: Icon(Icons.notifications),
            tooltip: 'Notifications',
          ),
        ),
    );
  }
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("You Clicked $item"),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () => debugPrint("Performing UNDO Operation"),
    )
  );

  Scaffold.of(context).showSnackBar(snackBar);
}