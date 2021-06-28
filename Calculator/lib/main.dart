import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var result = "";

//button

  Widget btn(var textt) {
    return Container( 
      height: 60,
      width: 60,
    child:ElevatedButton(
      onPressed: () {setState(() {result = result + textt;});},
      child: Text(textt,style: TextStyle(
          fontSize: 20,
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(CircleBorder()),
        // padding: MaterialStateProperty.all(EdgeInsets.all(40)),
        backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) return Colors.black;
        }),
      ),
    ),
    );
  }

//

  clearr() {
    setState(() {
      result = "";
    });
  }
//

  output() {
    Parser P = Parser();
    Expression exp = P.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }



// start
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Center(child: Text("Calculator")), 
          ),
      body: Container(
        color: Colors.blueGrey[900],
      child:  Column(
        mainAxisAlignment:MainAxisAlignment.end,
        children: [
        Padding(padding: EdgeInsets.only(bottom: 10,top: 10)),

        // Result 
        Container(
          child:Text(result,style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
         ),

        //

        Padding(padding: EdgeInsets.only( top: 50)),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
            height: 60,
            width: 60,
            child: ElevatedButton(
              onPressed: () {
                clearr();
              },
              child: Text(
                "C",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder(
                  side: BorderSide(color: Colors.black),
                )),
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                overlayColor:
                    MaterialStateProperty.resolveWith<Color?>((states) {
                  if (states.contains(MaterialState.pressed)) return Colors.amber;
                }),
              ),
            ),
          ),
            btn("+/-"),
            btn("%"),
            btn("/")
          ],
        ),

        //

        Padding(padding: EdgeInsets.only(bottom: 5.0,top: 5.0)),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            btn("7"),
            btn("8"),
            btn("9"),
            btn("*"),
          ],
        ),

        //
        Padding(padding: EdgeInsets.only(bottom: 5.0,top: 5.0)),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            btn("4"),
            btn("5"),
            btn("6"),
            btn("-"),
          ],
        ),

        //
        Padding(padding: EdgeInsets.only(bottom: 5.0,top: 5.0)),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          btn("1"),
          btn("2"),
          btn("3"),
          btn("+"),
           
          ]
        ),
        Padding(padding: EdgeInsets.only(bottom: 5.0,top: 5.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          btn("0",),
          btn("."),
          Container(
              height: 60,
              width: 150,
              child:ElevatedButton(
               onPressed: () {
                 output();
                 },
                child: Text("=",style: TextStyle(
                fontSize: 30,
                       ),),
                 style: ButtonStyle(
                //  shape: MaterialStateProperty.all(CircleBorder()),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.black)
                )
                ),
                // padding: MaterialStateProperty.all(EdgeInsets.all(40)),
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
                overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
                  if (states.contains(MaterialState.pressed)) return Colors.amber;
                }),
               ),
             ),
          ),
        ]),
        Padding(padding: EdgeInsets.only(bottom: 20,)),
      ]),
      )
    );
  }
}
