import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _IniciarSeccion createState() => _IniciarSeccion();
}

class _IniciarSeccion extends State<Login> {
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
          'Inicia sesion',
          style: tamLetraT,
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, '/pages/inicio');
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
                  SizedBox(height: 15.0),
                  Divider(),
                  _cargarLogo(),
                  Divider(),
                  _crearCampEmail(),
                  Divider(),
                  _crearCampPassUser(),
                  Divider(),
                  _crearBotonAgregarItemPD(),
                  SizedBox(height: 10.0),
                  Divider(),
                  _textRegistro(),
                  Divider(),
                  // _listaUser()
                ],
              ),
            ),
          ),
        ],
      ),
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
      /*  validator: (value) {
        if (value.length < 4) {
          return 'Ingrese la Contraseña';
        } else {
          return null;
        }
      },*/
    );
  }

  Widget _textRegistro() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'No te acuerdas de tu contrasena?',
                    style: TextStyle(
                        fontSize: 15.0, decoration: TextDecoration.underline),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'O es que aun no tienes cuenta?',
                    style: TextStyle(
                        fontSize: 15.0, decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cargarLogo() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://res.cloudinary.com/auroyolimar/image/upload/v1610939887/PassionePeluqueria/LogoPP_dp9dyp.jpg'),
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearBotonAgregarItemPD() {
    return RaisedButton(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text(
            'ACCEDER',
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
        ),
        shape: RoundedRectangleBorder(),
        color: Colors.black, //Color del boton
        onPressed: () {
          /*if (formKey.currentState.validate()) {}*/
        });
  }
}
