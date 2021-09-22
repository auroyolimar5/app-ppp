import 'package:flutter/material.dart';

class Registro extends StatefulWidget {
  @override
  _CrearUsuarioState createState() => _CrearUsuarioState();
}

class _CrearUsuarioState extends State<Registro> {
  final tamLetra = TextStyle(fontSize: 14.0);
  final tamLetraT = TextStyle(fontSize: 20.0, color: Colors.white);
  final tamLetrayColor = TextStyle(fontSize: 15.0, color: Colors.black);
  final formKey = GlobalKey<FormState>();
  //Campos controller para guardar en la base de datos
  //final codUserController = TextEditingController();
  //final nombreController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Registro',
          style: tamLetraT,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back, // add custom icons also
          ),
        ),
        backgroundColor: Colors.black, //Color fondo
      ),
      body: Stack(
        children: <Widget>[
          //_crearFondo(context),
          _formConfig(context),
        ],
      ),
    );
  }

  Widget _formConfig(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Container(
              height: 15.0,
            ),
          ),
          Container(
            width: size.width * 0.95,
            padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 10.0),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  // Text('NUEVO USUARIO', style: tamLetra),
                  SizedBox(height: 15.0),
                  _crearCampNombre(),
                  Divider(),
                  _crearCampApellido(),
                  Divider(),
                  _crearCampPassUser(),
                  Divider(),
                  _crearCampTelefono(),
                  Divider(),
                  _crearCampEmail(),
                  Divider(),
                  _crearBotonAgregarItemPD(),
                  SizedBox(height: 10.0),
                  // _listaUser()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearCampNombre() {
    return TextFormField(
      //controller: codUserController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Nombre Ejm. Jose',
          labelText: 'Nombre'),
      /* validator: (value) {
        if (value.length < 3) {
          return 'Ingrese el nombre';
        } else {
          return null;
        }
      },*/
    );
  }

  Widget _crearCampApellido() {
    return TextFormField(
      //controller: nombreController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Apellido',
          labelText: 'Apellido'),
      /* validator: (value) {
        if (value.length < 5) {
          return 'Ingrese el apellido';
        } else {
          return null;
        }
      },*/
    );
  }

  Widget _crearCampTelefono() {
    return TextFormField(
      //controller: codUserController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Telefono',
          labelText: 'Telefono'),
      /* validator: (value) {
        if (value.length < 3) {
          return 'Telefono';
        } else {
          return null;
        }
      },*/
    );
  }

  Widget _crearCampEmail() {
    return TextFormField(
      //controller: codUserController,
      decoration: InputDecoration(
          border: OutlineInputBorder(), hintText: 'Email', labelText: 'Email'),
      /* validator: (value) {
        if (value.length < 3) {
          return 'Email';
        } else {
          return null;
        }
      },*/
    );
  }

  Widget _crearCampPassUser() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Contraseña',
        labelText: 'Contraseña',
      ),
      /* validator: (value) {
        if (value.length < 4) {
          return 'Ingrese la Contraseña';
        } else {
          return null;
        }
      },*/
    );
  }

  Widget _crearBotonAgregarItemPD() {
    return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text(
            'REGISTRARSE',
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
        ),
        shape: RoundedRectangleBorder(),
        color: Colors.black, //Color del boton
        onPressed: () {
          // if (formKey.currentState.validate()) {
          /*final nuevoUser = UsuarioModel(codUsuario: codUserController.text, nombreUsuario: nombreController.text, password: passwordController.text);
            // DBProvider.db.nuevoUsuario(nuevoUser);
            DBProvider.db.agregarUser(nuevoUser);
            mostrarAlerta(context, 'Usuario Creado', 'Se registro correctamente el Usuario.');
            print('Se a registrado correctamente el USUARIO.');
            Navigator.pushReplacementNamed(context, '/'); */
        });
  }
}
