import 'package:flutter/material.dart';
import 'package:ingles/Bicho.dart';
import 'package:ingles/Numeros.dart';
import 'package:ingles/Videos.dart';
import 'package:ingles/Vogais.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState()=> _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController; //Controlador de guias

  @override
  void initState(){
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose(){
    super.dispose();
    //libera os recursos do contolador de guias quando a tela é encerrada (liberada RAM etc)
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Inglês"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.red, 
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: "Bichos"),
            Tab(text: "Numeros"),
            Tab(text: "Vogais"),
            Tab(text: "Videos"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Bicho(),
          Numeros(),
          //Vogais(),
          //Videos(),
        ]
      ),
    );
  }

}
