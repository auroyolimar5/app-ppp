import 'package:app_pp/src/widgets/botonesmp.dart';
import 'package:app_pp/src/widgets/drawer.dart';
import 'package:app_pp/src/widgets/mapa.dart';
import 'package:app_pp/src/widgets/menu_interactivo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';

//Librerias para Mapa
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:latlong/latlong.dart" as latLng;

class Inicio extends StatefulWidget {
  Inicio({Key key = const Key('any_key')}) : super(key: key);

  //final String title;

  @override
  _InicioStale createState() => _InicioStale();
}

class _InicioStale extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text(
          'Passione Peluqueria',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(Icons.map_outlined),
              tooltip: 'Mapa',
              iconSize: 30.0,
              onPressed: () {},
            ),
          )
        ],
        backgroundColor: Colors.black87,
      ),
      body: Stack(
        //alignment: Alignment(-1.0, -1.0),
        alignment: AlignmentDirectional.topStart,
        children: <Widget>[
          Column(
            children: [
              _insertarImagen(),
              //Botonesmp(),
            ],
          )
          //MenuInteractivo(),
        ],
      ),
      drawer: MenuDrawer(),
    );
  }
}

Widget _insertarImagen() {
  return Column(
    children: [
      CarouselSlider(
        items: [
          new NetworkImage(
              'https://cdn.pixabay.com/photo/2020/05/24/02/00/barber-shop-5212059_960_720.jpg'),
          new NetworkImage(
              'https://cdn.pixabay.com/photo/2017/03/22/17/37/barber-2165745__340.jpg'),
          new NetworkImage(
              'https://image.freepik.com/foto-gratis/coloracion-cabello-cepillo-pared-blanca_186202-7415.jpg'),
          new NetworkImage(
              'https://image.freepik.com/foto-gratis/mujer-peluquero-cortando-cabello-hombre-barbudo-mascarilla-concepto-corte-pelo-cuarentena_230325-414.jpg'),
        ].map((netImage) => new Image(image: netImage)).toList(),
        options: CarouselOptions(
          height: 180.0,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          //onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
          //enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
      ),
    ],
  );

  /*child: Image(
      image: NetworkImage(
          'https://cdn.pixabay.com/photo/2020/05/24/02/00/barber-shop-5212059_960_720.jpg'),
    ),*/
}

Widget _mapaP(context) {
  return Container(
    constraints: BoxConstraints.expand(
      height: Theme.of(context).textTheme.headline4.fontSize * 1.1 + 200.0,
    ),
    width: 400,
    //padding: const EdgeInsets.all(8.0),
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
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
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
    ),
  );
}
