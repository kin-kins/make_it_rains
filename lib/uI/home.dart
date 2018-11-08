import "package:flutter/material.dart";
class stateful extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new makeItRain();
  }

}





class makeItRain extends State<stateful> {
  @override
  int _money=1000;
  void _rain()
  {
    setState(() {

    });
    _money+=400;
    debugPrint("$_money");
  }
  Color cond()
  {
    if(_money>10000)
      return Colors.green;
    else
      return Colors.blue;
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return (new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Make It Rain",
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          backgroundColor: Colors.greenAccent,
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.search),
                onPressed: () => debugPrint("Search Tapped"))
          ],
        ),
        
        body: new Center(
            child: new Container(
                child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("GET RICH !",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 32.0,
                )),
            new Text("$_money",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 60.0,
                    color:cond()
                )
            ),
            new GestureDetector(onTap:()=>_rain(),
              child:new Container(
                padding: EdgeInsets.all(15.0),
                decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.greenAccent.shade400),
                child: new Text("Rain"),

            )
            ),
          ],
        )
            )
        )
    )
    );
  }
}
