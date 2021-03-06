import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Teclado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(

      theme: new ThemeData(

        primarySwatch: Colors.pink,

      ),

      home : new Scaffold(

        appBar: AppBar(

          title: Text("Teclado"),

        ),
        body: Center(

          child: Column(

            children: <Widget>[

              Container(

                // Añadimos un margen
                margin: const EdgeInsets.only(top: 35.0, left: 25, right: 25),

                child: new Column(

                  children: <Widget>[

                    new Center(

                      // InputText en el cual introducmios los caracteres que queramos.
                     child: TextField(

                        decoration: InputDecoration(

                            border: InputBorder.none,
                            hintText: 'Introduce el texto'

                        ),

                       onChanged: (text){

                         itemRef.child('texto').update({
                           'texto' : '$text'
                         });
                       },
                     ),
                    ),
                    Container(

                        child: new Row (

                          children: <Widget>[

                            Expanded(

                              flex: 1,
                              // Botón para borrar
                              child: new IconButton(

                                color: Colors.black,
                                icon: new Icon(Icons.backspace),

                                onPressed: () {

                                  itemRef.child('texto').update({
                                    'borrar' : "true"
                                  });

                                  itemRef.child('texto').update({
                                    'borrar' : "false"
                                  });

                                },
                              ),
                            ),

                            Expanded(

                              flex: 1,

                              // Botón para hacer un "intro"
                              child: new IconButton(

                                color: Colors.black,
                                icon: new Icon(Icons.subdirectory_arrow_left),

                                onPressed: () {
                                  itemRef.child('texto').update({
                                    'intro' : "true"
                                  });
                                  itemRef.child('texto').update({
                                    'intro' : "false"
                                  });
                                },
                              ),
                            ),
                          ],
                        )
                    ),

                    // Botones de dirección del teclado
                    Container(

                      margin: const EdgeInsets.only(top: 50.0),

                      child: Padding(

                        padding: const EdgeInsets.all(8.0),

                        child: Column(

                          children: <Widget>[

                            Container(

                              margin: const EdgeInsets.only(bottom: 50.0),

                              child: Text(

                                'Flechas de dirección',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,

                                style: TextStyle(

                                  fontWeight: FontWeight.bold,

                                ),
                              ),
                            ),

                            IconButton(

                              color: Colors.black,
                              icon: new Icon(Icons.arrow_upward),

                              onPressed: () {

                                itemRef.child('clicks').update({
                                  'up' : "true"
                                });

                                itemRef.child('clicks').update({
                                  'up' : "false"
                                });
                              },
                            ),

                            Row (

                              children: <Widget>[

                                Expanded(

                                  flex: 3,

                                  child: new IconButton(

                                    color: Colors.black,
                                    icon: new Icon(Icons.arrow_back),

                                    onPressed: () {

                                      itemRef.child('clicks').update({
                                        'left' : "true"
                                      });

                                      itemRef.child('clicks').update({
                                        'left' : "false"
                                      });
                                    },
                                  ),
                                ),

                                Expanded(

                                  flex: 3,

                                  child: new IconButton(

                                    color: Colors.black,
                                    icon: new Icon(Icons.arrow_downward),

                                    onPressed: () {
                                      itemRef.child('clicks').update({
                                        'down' : "true"
                                      });
                                      itemRef.child('clicks').update({
                                        'down' : "false"
                                      });
                                    },
                                  ),
                                ),

                                Expanded(

                                  flex: 3,

                                  child: new IconButton(

                                    color: Colors.black,
                                    icon: new Icon(Icons.arrow_forward),

                                    onPressed: () {
                                      itemRef.child('clicks').update({
                                        'right' : "true"
                                      });
                                      itemRef.child('clicks').update({
                                        'right' : "false"
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),

                            // Vuelve a la ventana anterior
                            Container(

                              margin: const EdgeInsets.only(top: 100.0),

                              child: FlatButton(

                                color: Colors.pink,
                                textColor: Colors.white,
                                child: Text('Volver'),

                                onPressed: () {
                                  Navigator.pop(context);
                                  },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}