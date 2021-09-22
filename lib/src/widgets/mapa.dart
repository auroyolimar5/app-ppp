import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong/latlong.dart" as latLng;

class Mapa extends StatelessWidget {
  @override
  /* Widget build(BuildContext context) {
    return new FlutterMap(*/

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Mapa', style: TextStyle(fontSize: 20.0, color: Colors.white)),
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
        elevation: 0.0,
      ),
      body: Container(
        constraints: BoxConstraints.expand(
          height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
        ),
        width: 400,
        padding: const EdgeInsets.all(8.0),
        height: 350,
        margin: const EdgeInsets.all(10.0),
        child: new FlutterMap(
          options: new MapOptions(
            center: new latLng.LatLng(-2.89909, -79.00519),
            zoom: 16.5,
            screenSize: Size(50, 50),
          ),
          layers: [
            new TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
            new MarkerLayerOptions(
              markers: [
                new Marker(
                  width: 30.0,
                  height: 80.0,
                  point: new latLng.LatLng(-2.89909, -79.00519),
                  builder: (ctx) => new Container(
                    child: new Icon(
                      Icons.location_pin,
                      color: Colors.redAccent[700],
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          ],
          /* children: <Widget>[
            TileLayerWidget(
              options: TileLayerOptions(
                  urlTemplate:
                      "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c']),
            ),
            MarkerLayerWidget(
                options: MarkerLayerOptions(markers: [
              Marker(
                width: 30.0,
                height: 80.0,
                point: latLng.LatLng(-2.89909, -79.00519),
                builder: (ctx) => Container(child: FlutterLogo()),
              )
            ]))
          ],*/
        ),
      ),
    );

    /*void _llamarMapa() {
    showDialog(
        context: context,
        builder: (BuildContext) {
          return AlertDialog(
            title: Text('Titulo'),
            content: Text('contenido'),
            actions: <Widget>[
              RaisedButton(
                child: Text(
                  "Cerrar",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }*/
  }
}
