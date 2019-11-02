import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
//          width: 200.0,
//          height: 100.0,
//          margin: EdgeInsets.only(left: 35.0),
            child: Column(
              children: <Widget>[
                LogoImageAsset(),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Row11",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 35.0,
                                fontFamily: 'Verdana',
                                fontWeight: FontWeight.w700,
//                fontStyle: FontStyle.italic,
                                color: Colors.white))),
                    Expanded(
                        child: Text("Row12",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 35.0,
                                fontFamily: 'Verdana',
                                fontWeight: FontWeight.w700,
//                fontStyle: FontStyle.italic,
                                color: Colors.white))),
                    Expanded(
                        child: Text("Row13",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 35.0,
                                fontFamily: 'Verdana',
                                fontWeight: FontWeight.w700,
//                fontStyle: FontStyle.italic,
                                color: Colors.white))),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("Row21",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 35.0,
                                fontFamily: 'Verdana',
                                fontWeight: FontWeight.w700,
//                fontStyle: FontStyle.italic,
                                color: Colors.white))),
                    Expanded(
                        child: Text("Row22",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 35.0,
                                fontFamily: 'Verdana',
                                fontWeight: FontWeight.w700,
//                fontStyle: FontStyle.italic,
                                color: Colors.white))),
                    Expanded(
                        child: Text("Row23",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 35.0,
                                fontFamily: 'Verdana',
                                fontWeight: FontWeight.w700,
//                fontStyle: FontStyle.italic,
                                color: Colors.white))),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text("PUBG",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 35.0,
                                fontFamily: 'Verdana',
                                fontWeight: FontWeight.w700,
//                fontStyle: FontStyle.italic,
                                color: Colors.white))),
                    Expanded(
                        child: Text("Battlegrounds",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 25.0,
                                fontFamily: 'Verdana',
                                fontWeight: FontWeight.w700,
//                fontStyle: FontStyle.italic,
                                color: Colors.white))),
                  ],
                ),
                StartGameButton()
              ],
            )
        )
    );
  }
}

class LogoImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/revotic.png');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}

class StartGameButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrangeAccent,
          child: Text(
            "Start Game",
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'Verdana',
                fontWeight: FontWeight.w700),
          ),
          elevation: 6.0,
          onPressed: () => startGame(context)),
    );
  }

  void startGame(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Game Started Successfuly"),
      content: Text("Enjoy the Revotic Adventure!"),
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
