import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/screen/photo_list_widget.dart';

import 'photo_detail_widget.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  var selectedValue = '相机';
  var _bg =
      'https://images.pexels.com/photos/13440765/pexels-photo-13440765.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load';

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('相册列表')),
      body: OrientationBuilder(builder: (context, orientation) {
        if (MediaQuery.of(context).size.width > 480) {
          return Row(children: <Widget>[
            Expanded(
              flex: 2,
              child: PhotoListWidget((name, bg) {
                setState(() {
                  selectedValue = name;
                  _bg = bg;
                });
              }, true),
            ),
            Expanded(
              flex: 4,
              child: PhotoDetailWidget(selectedValue, _bg),
            ),
          ]);
        } else {
          return PhotoListWidget((name, bg) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(title: Text(name)),
                    body: PhotoDetailWidget(name, bg),
                  );
                },
              ),
            );
          }, false);
        }
      }),
    );
  }
}
