import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 20,
                    color: Colors.blue[900],
                  ),
                ),
                Transform.rotate(
                  angle: 16,
                  child: Image.network(
                    'https://webstockreview.net/images/clipart-leaves-mint-5.png',
                    height: 100,
                  ),
                ),
              ],
            ),
            Stack(children: [
              Image.asset('assets/banner.png',
                  color: Color.fromRGBO(255, 255, 255, 0.9),
                  colorBlendMode: BlendMode.modulate),
              Padding(
                padding: const EdgeInsets.only(top: 78.0),
                child: Center(
                    child: Text('LOGIN',
                        style: GoogleFonts.cinzel(
                            shadows: [
                              Shadow(
                                blurRadius: 10.0,
                                color: Colors.black,
                                offset: Offset(2.0, 2.0),
                              ),
                            ],
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold))),
              ),
            ]),
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      minLines: 1,
                      maxLines: 1,
                      autocorrect: false,
                      decoration: InputDecoration(
                        // icon: Icon(Icons.mail_outline),
                        hintStyle: GoogleFonts.cinzel(
                            color: Colors.grey[800],
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        hintText: 'Enter You Email',
                        filled: true,
                        fillColor: Colors.grey[200],
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      minLines: 1,
                      maxLines: 1,
                      autocorrect: false,
                      decoration: InputDecoration(
                        //  icon: Icon(Icons.lock),
                        hintText: 'Enter You Password',
                        hintStyle: GoogleFonts.cinzel(
                            color: Colors.grey[800],
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                        filled: true,
                        fillColor: Colors.grey[200],
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {},
                      padding: EdgeInsets.only(
                          left: 16.0, right: 16, top: 14, bottom: 14),
                      color: Colors.green,
                      textColor: Colors.white,
                      child: Text(
                        "Login".toUpperCase(),
                        style: GoogleFonts.cinzel(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    SizedBox(width: 30),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.white)),
                      onPressed: () {},
                      padding: EdgeInsets.only(
                          left: 16.0, right: 16, top: 14, bottom: 14),
                      color: Colors.pink,
                      textColor: Colors.white,
                      child: Text(
                        "Register".toUpperCase(),
                        style: GoogleFonts.cinzel(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                  Text("OR",
                      style: GoogleFonts.cinzel(
                          color: Colors.grey[800],
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                ]),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-google-icon-logo-png-transparent-svg-vector-bie-supply-14.png',
                      height: 40,
                    ),
                    Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Facebook_Logo_%282019%29.png/1024px-Facebook_Logo_%282019%29.png',
                      height: 40,
                    ),
                    Image.network(
                      'https://pngimg.com/uploads/github/github_PNG83.png',
                      height: 40,
                    ),
                    Image.network(
                      'https://assets.stickpng.com/images/5847f997cef1014c0b5e48c1.png',
                      height: 40,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
