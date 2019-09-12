import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => new HomePageState();
}

Widget _button (String number, Function() f){
  return MaterialButton(
    height: 100.0,
    child: Text(number,
        style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
    textColor: Colors.black,
    color: Colors.grey[100],
    onPressed: f,
  );
}

class HomePageState extends State<HomePage>{
  var ansStr = "0";
  var val1 = 0;
  var val2 = 0;
  var res = 0;
  var op = '=';

  void _clear(){
    setState(() {
      ansStr="0";
      op = '=';
      val1 = 0;
      val2 = 0;
    });
  }

  void _zero(){
    setState(() {
      ansStr+="0";
    });
  }

  void _disp(){
    val2 = int.parse(ansStr);
    if (op == '='){
      

    }
    else if(op == '+'){
      res = val1 + val2;
    }
    else if(op == '-'){
      res = val1 - val2;
    }
    else if(op == '*'){
      res = val1*val2;
    }
    else if(op == '/'){
      if(val2 != 0) {
        res = (val1 / val2).round();
      }
      else{
        res = 0;
      }
    }
    setState(() {
      ansStr=res.toString();
      val1 = val2;

    });
  }

  void _div(){
    setState(() {
      val1 = int.parse(ansStr);
      ansStr="0";
      op = '/';
    });
  }

  void _seven(){
    setState(() {
      ansStr+="7";
    });
  }

  void _eight(){
    setState(() {
      ansStr+="8";
    });
  }

  void _nine(){
    setState(() {
      ansStr+="9";
    });
  }

  void _sum(){
    setState(() {
      val1 = int.parse(ansStr);
      ansStr="0";
      op = '+';
    });
  }

  void _four(){
    setState(() {
      ansStr+="4";
    });
  }

  void _five(){
    setState(() {
      ansStr+="5";
    });
  }

  void _six(){
    setState(() {
      ansStr+="6";
    });
  }

  void _sub(){
    setState(() {
      val1 = int.parse(ansStr);
      ansStr="0";
      op = '-';
    });
  }

  void _three(){
    setState(() {
      ansStr+="3";
    });
  }

  void _two(){
    setState(() {
      ansStr+="2";
    });
  }

  void _one(){
    setState(() {
      ansStr+="1";
    });
  }

  void _mult(){
    setState(() {
      val1 = int.parse(ansStr);
      ansStr="0";
      op = '*';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculadora"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 100.0,
                ),
                alignment: Alignment.bottomRight,
                color: Colors.white,
                child: Text(
                  "$ansStr",
                  style: TextStyle(
                      fontSize: 50.0,
                      color: Colors.black
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("C", _clear),
                  _button("0", _zero),
                  _button("=", _disp),
                  _button("/", _div)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("7", _seven),
                  _button("8", _eight),
                  _button("9", _nine),
                  _button("+", _sum)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("4", _four),
                  _button("5", _five),
                  _button("6", _six),
                  _button("-", _sub)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _button("1", _one),
                  _button("2", _two),
                  _button("3", _three),
                  _button("*", _mult)
                ],
              ),
            ],
          ),
        )
    );
  }
}