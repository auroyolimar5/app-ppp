import 'package:app_pp/src/widgets/drawer.dart';
//import 'package:app_pp/src/widgets/menu_interactivo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:carouse/';

class Botonesmp extends StatefulWidget {
  Botonesmp({Key key = const Key("any_key")}) : super(key: key);

  @override
  _BotonesState createState() => _BotonesState();
}

class _BotonesState extends State<Botonesmp> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Container(
      child: ListView(
        children: [
          ListTile(),
          ListTile(
            title: Text('DEPILACION  2', style: TextStyle(fontSize: 12)),
            tileColor: Colors.grey,
            trailing: IconButton(
              icon: Icon(
                Icons.arrow_right_alt,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            title: Text('PELUQUERIA 10', style: TextStyle(fontSize: 12)),
            tileColor: Colors.grey,
            trailing: IconButton(
              icon: Icon(
                Icons.arrow_right_alt,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    ),
    Container(
      //transformAlignment: al,
      child: ListView(
        children: [
          Text('DESCRIPCION',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(
              'Centro de belleza donde se realizan trabajos de barberia, estilista, cambio de imagen, tintes, depilaciones corporales, masajes corporales, manicura, pedicura, reflexologia, talleres de peluqueria, clases o cursos.',
              textAlign: TextAlign.justify),
          SizedBox(
            height: 15.0,
          ),
          Text('CONTACTO',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 7.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
            Icon(Icons.call),
            Text('0990600657',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          ]),
          Text('HORARIO DE ATENCION',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Lunes'),
              Text('09:00 - 13:00/ 14:00 - 18:00'),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Martes'),
              Text('09:00 - 13:00/ 14:00 - 18:00'),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Miercoles'),
              Text('09:00 - 13:00/ 14:00 - 18:00'),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Jueves'),
              Text('09:00 - 13:00/ 14:00 - 18:00'),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Viernes'),
              Text('09:00 - 13:00/ 14:00 - 18:00'),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Sabado'),
              Text('09:00 - 13:00/ 14:00 - 18:00'),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('Domingo'),
              Text('                     '),
              Text('Cerrado'),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Text('DIRECCION',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          Text('Benigno Malo 6-70, Cuenca, Ecuador',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        ],
      ),
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Stack(
        //alignment: Alignment(-1.0, -1.0),
        alignment: AlignmentDirectional.topStart,
        children: <Widget>[
          // _insertarImagen(),

          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: 'SERVICIO',
                icon: Icon(null),
              ),
              BottomNavigationBarItem(
                label: 'INFORMACION',
                icon: Icon(null),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),
          _widgetOptions.elementAt(_selectedIndex), //MenuInteractivo(),
        ],
      ),
    );
  }
}
/*
Widget _insertarImagen() {
  return Column(
    children: [
      CarouselSlider(
        items: [
          new NetworkImage(
              'https://pbs.twimg.com/profile_images/760249570085314560/yCrkrbl3_400x400.jpg'),
          new NetworkImage(
              'https://webinerds.com/app/uploads/2017/11/d49396_d9c5d967608d4bc1bcf09c9574eb67c9-mv2.png'),
        ].map((netImage) => new Image(image: netImage)).toList(),
      ),
    ],
  );

  /*child: Image(
      image: NetworkImage(
          'https://cdn.pixabay.com/photo/2020/05/24/02/00/barber-shop-5212059_960_720.jpg'),
    ),*/
}*/
