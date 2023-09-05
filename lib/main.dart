import 'package:flutter/material.dart';

void main(){
  runApp(Calc());
}

class Calc extends StatelessWidget {
  const Calc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cal(),
    );
  }
}

class Cal extends StatefulWidget {
  const Cal({super.key});

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  double ?result;

  TextEditingController _value = TextEditingController();
  TextEditingController _val = TextEditingController();

  void sub(){
    setState(() {
    double frst = double.parse(_value.text.toString());
    double scnd = double.parse(_val.text.toString());
    result =  frst - scnd;
    });
  }

  void add(){
    setState(() {
    double frst = double.parse(_value.text.toString());
    double scnd = double.parse(_val.text.toString());
    result =  frst + scnd;
    });
  }

  void multi(){
    setState(() {
    double frst = double.parse(_value.text.toString());
    double scnd = double.parse(_val.text.toString());
    result =  frst * scnd;
    });
  }

  void div(){
    setState(() {
    double frst = double.parse(_value.text.toString());
    double scnd = double.parse(_val.text.toString());
    result =  frst / scnd;
    });
  }

  void mod(){
    setState(() {
    double frst = double.parse(_value.text.toString());
    double scnd = double.parse(_val.text.toString());
    result =  frst % scnd;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("CALCULATOR"),
        leading: Icon(Icons.calculate),
      ),
      backgroundColor: Colors.red[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: _val,
            decoration: InputDecoration(hintText: "ENTER first VALUE"),
          ),
          TextField(controller: _value,
            decoration: InputDecoration(hintText: "ENTER second VALUES"),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                add();
              }, style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(50, 30, 50, 30),backgroundColor: Colors.red),
                  child: Text("+")),
              SizedBox(width: 50,),
              ElevatedButton(onPressed: (){

                sub();
              },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(50, 30, 50, 30),backgroundColor: Colors.red),
                  child: Text("-")),
              // SizedBox(width: 50,),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                div();
              },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(50, 30, 50, 30),backgroundColor: Colors.red),
                  child: Text("/")),
              SizedBox(width: 50,),
              ElevatedButton(onPressed: (){
                mod();
              },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(50, 30, 50, 30), backgroundColor: Colors.red),
                  child: Text("%")),
          ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                multi();
              },
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(50, 30, 50, 30), backgroundColor: Colors.red),
                  child: Text("*")),
            ],
          ),
          SizedBox(height: 30,),
          Text(" RESULT IS $result",style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold,backgroundColor: Colors.cyan[800]
          ),),

        ],
      )
    );
  }
}
