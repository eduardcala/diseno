import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
    final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);


    return Scaffold(
      body: Column(
        children: [
          
          Image(image: NetworkImage('https://guidetoiceland.imgix.net/402731/x/0/vestrahorn-stokksnes-as-a-landscape-photography-destination-1?auto=compress%2Cformat&ch=Width%2CDPR&dpr=1&ixlib=php-3.3.0&w=1300&s=cb255905aaf3cb467ff0efa1522e3199')),
          
          Container(
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
          )

        ],
      )
    );
  }
}