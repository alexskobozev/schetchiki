import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:schetchiki/localizations.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (BuildContext context) =>
          DemoLocalizations.of(context).title,
      localizationsDelegates: [
        const DemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''),
        const Locale('ru', ''),
      ],
//      title: 'Schetchiki',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _sendAction() async {
    var toMailId = "example@example.com";
    var subject = "subject";
    var body = "body";

    var url = 'mailto:$toMailId?subject=$subject&body=$body';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(DemoLocalizations.of(context).title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              DemoLocalizations.of(context).water,
              style: new TextStyle(
                fontSize: 18.0,
                fontFamily: "WorkSansBold",
                color: Colors.black,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  FontAwesomeIcons.hotjar,
                  color: Colors.black,
                  size: 22.0,
                ),
                hintText: DemoLocalizations.of(context).hotwater,
                hintStyle:
                    TextStyle(fontFamily: "WorkSansSemiBold", fontSize: 17.0),
              ),
              style: TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 16.0,
                  color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  FontAwesomeIcons.snowflake,
                  color: Colors.black,
                  size: 22.0,
                ),
                hintText: DemoLocalizations.of(context).coldwater,
                hintStyle:
                    TextStyle(fontFamily: "WorkSansSemiBold", fontSize: 17.0),
              ),
              style: TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 16.0,
                  color: Colors.black),
            ),
            Text(
              DemoLocalizations.of(context).electro,
              style: new TextStyle(
                fontSize: 18.0,
                fontFamily: "WorkSansBold",
                color: Colors.black,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  FontAwesomeIcons.diceOne,
                  color: Colors.black,
                  size: 22.0,
                ),
                hintText: "T1",
                hintStyle:
                    TextStyle(fontFamily: "WorkSansSemiBold", fontSize: 17.0),
              ),
              style: TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 16.0,
                  color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  FontAwesomeIcons.diceTwo,
                  color: Colors.black,
                  size: 22.0,
                ),
                hintText: "T2",
                hintStyle:
                    TextStyle(fontFamily: "WorkSansSemiBold", fontSize: 17.0),
              ),
              style: TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 16.0,
                  color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  FontAwesomeIcons.diceThree,
                  color: Colors.black,
                  size: 22.0,
                ),
                hintText: "T3",
                hintStyle:
                    TextStyle(fontFamily: "WorkSansSemiBold", fontSize: 17.0),
              ),
              style: TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 16.0,
                  color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  FontAwesomeIcons.bolt,
                  color: Colors.black,
                  size: 22.0,
                ),
                hintText: "Total",
                hintStyle:
                    TextStyle(fontFamily: "WorkSansSemiBold", fontSize: 17.0),
              ),
              style: TextStyle(
                  fontFamily: "WorkSansSemiBold",
                  fontSize: 16.0,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sendAction,
        tooltip: 'Send',
        child: Icon(Icons.email),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
