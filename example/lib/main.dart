import 'package:flutter/material.dart';
import 'videos.dart';
import 'change_video_src.dart';
import 'list_video.dart';
import 'one_video_ctrl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/oneVideoCtrl': (BuildContext context) => OneVideoCtrl(),
        '/listVideo': (BuildContext context) => ListVideo(),
        '/change_video_src': (BuildContext context) => ChangeVideoSrc(),
        '/videos': (BuildContext context) => Videos(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('video_box example'),
      ),
      body: Center(
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text('one video ctrl'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/oneVideoCtrl');
                },
              ),
              RaisedButton(
                child: Text('list video'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/listVideo');
                },
              ),
              RaisedButton(
                child: Text('change video src'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/change_video_src');
                },
              ),
              RaisedButton(
                child: Text('videos'),
                onPressed: () {
                  Navigator.of(context).pushNamed('/videos');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
