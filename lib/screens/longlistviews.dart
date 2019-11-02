import 'package:flutter/material.dart';
import 'package:flutter_elements/main.dart';

Widget getListView() {
  var listItems = getListElements();
  
  var listView = ListView.builder(
      itemBuilder: (context, index) {

        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
//          onTap: () => debugPrint("${listItems[index]} was clicked"),
            onTap: () => showSnackBar(context, listItems[index])
        );
      }
  );

  return listView;
}

List<String> getListElements() {
  var items = List<String>.generate(100, (counter) => "Item $counter");
  return items;
}
