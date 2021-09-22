import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Agrega un ListView al drawer
      child: ListView(
        // Importante: elimina cualquier padding del ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(''),
            margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: NetworkImage(
                    'https://res.cloudinary.com/auroyolimar/image/upload/v1610939887/PassionePeluqueria/LogoPP_dp9dyp.jpg'),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined, color: Colors.black),
            title: Text('Inicio'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_right_alt, color: Colors.black),
            title: Text('Iniciar seccion'),
            onTap: () {
              Navigator.pushNamed(context, 'login');
            },
          ),
          ListTile(
            leading: Icon(Icons.app_registration, color: Colors.black),
            title: Text('Registro'),
            onTap: () {
              Navigator.pushNamed(context, 'registro');
            },
          ),
        ],
      ),
    );
  }
}
