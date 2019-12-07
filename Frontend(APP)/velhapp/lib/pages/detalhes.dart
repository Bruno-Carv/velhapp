import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_overlay/google/google.dart';

class Detalhes extends StatefulWidget {
  @override
  _Detalhes createState() => _Detalhes();
}

class _Detalhes extends State<Detalhes> {
  final int id;

  _Detalhes({Key key, this.id});
  int delay = 10;

  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.4223705, -122.0843794),
    zoom: 10.4746,
  );
  final CameraPosition _kNearGooglePlex = CameraPosition(
    target: LatLng(37.4084642, -122.0717857),
    zoom: 14.4746,
  );

  onFloatingPressed() {
    if (delay == 10) {
      setState(() {
        delay = 0;
      });
    } else {
      setState(() {
        delay = 10;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(
          statusBarColor: Color(0xfFF),
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Color(0xff6bc5e9),
          systemNavigationBarIconBrightness: Brightness.light),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6bc5e9),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: this.onFloatingPressed(),
        child: Icon(
          Icons.pin_drop,
          size: 28.00,
          color: Colors.white,
        ),
      ),
    );
  }
}
