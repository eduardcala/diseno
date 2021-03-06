import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          
            _crearImagen(),          
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto()

          ],
        ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://guidetoiceland.imgix.net/402731/x/0/vestrahorn-stokksnes-as-a-landscape-photography-destination-1?auto=compress%2Cformat&ch=Width%2CDPR&dpr=1&ixlib=php-3.3.0&w=1300&s=cb255905aaf3cb467ff0efa1522e3199'),
        height: 200.0,
        fit: BoxFit.cover,
        ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lago con un puente', style: estiloTitulo),
                        SizedBox( height: 7.0 ),
                        Text('Un lago en Alemania', style: estiloSubTitulo),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red, size: 30.0),
                  Text('41', style: TextStyle(fontSize:20.0))
                ],
              ),
            ),
    );
  }

  Widget _crearAcciones() {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );

  }

  Widget _accion(IconData icon, String texto) {

    return Column(
          children: [
            Icon( icon, color: Colors.blue, size: 40.0, ),
            SizedBox(height: 5.0),
            Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
          ],
        );


  }

  Widget _crearTexto() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Commodo non dolore amet quis et duis anim laborum id. Sint in ut anim velit dolore. Irure incididunt dolore qui adipisicing est anim Lorem. Eiusmod minim elit ullamco incididunt adipisicing consectetur occaecat elit minim duis ullamco ea. Aliqua minim fugiat do laborum proident elit. Adipisicing reprehenderit et eu cillum Lorem qui tempor.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}