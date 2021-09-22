import 'package:flutter/material.dart';

class MenuInteractivo extends StatefulWidget {
  MenuInteractivo({Key key = const Key('any_key')}) : super(key: key);

  @override
  _MenuInteractivoState createState() => _MenuInteractivoState();
}

class _MenuInteractivoState extends State<MenuInteractivo> {
  int _selectedIndex = 0;

  //final stiloBoton = TextStyle(fontSize: 12);

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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
    );
  }

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
}
