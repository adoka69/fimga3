import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp()));
}
class MyApp extends StatelessWidget {
  final images = [AssetImage('assets/1.PNG'),AssetImage('assets/2.PNG'),AssetImage('assets/3.PNG'),const AssetImage('assets/4.PNG'),AssetImage('assets/5.PNG'),AssetImage('assets/6.PNG'),AssetImage('assets/7.PNG'),];
  final List<String> name = <String>[
    'Дом',
    'Покупки',
    'Транспорт',
    'Здоровье',
    'Фитнес',
    'Счета',
    'Ресторан',
  ];
  final List<String> money = <String>[
    '\$321',
    '\$574',
    '\$124',
    '\$765',
    '\$324',
    '\$762',
    '\$325',
  ];
  final List<String> xpr = <String>[
    'Продукты',
    'Одежда',
    'Такси',
    'Лечение',
    'Тренировки',
    'Комунальные',
    'Ужин',
  ];


  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [Container(
          padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
          child: Container(
                child: const Align(
                  alignment: Alignment.center,
                child: Text("Баланс", style:
                TextStyle(color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
                ),
              ),),
        ),
          Container(
            child: const Align(
              alignment: Alignment.center,
              child: Text("\$1200.89", style:
              TextStyle(color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
              ),
            ),),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            width: 300,
            child:Row(
            children:[
              Container(
              child: const Icon(
                FontAwesomeIcons.angleLeft, color: Colors.black,
              ),
            ),
              Container(
                padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                child: const Align(
              alignment: Alignment.topCenter,
              child: Text("Апрель 2020", style:
              TextStyle(color: Colors.black,
                  fontSize: 20),
              ),
            ),),
              Container(
                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: const Icon(
                  FontAwesomeIcons.angleRight, color: Colors.black,
                ),
              ),

            ],),),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 510,
                    width: 350,

                    child:Container(
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => Container(
                          height: 65,
                          margin: const EdgeInsets.only(top: 1.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Container(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Image(image: images[index],height: 40, width: 40, fit:BoxFit.cover)
                                  ),
                              Align(alignment: Alignment.topLeft,
                              child:Container(
                                child: Column(
                                  children: [
                                    Container(
                                      width: 150,
                                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),

                                    child:  Text(name[index], style:
                                    const TextStyle(color: Colors.black,
                                    fontSize: 24),

                                    ),),],
                                ),

                                ),),
                              Align(alignment: Alignment.topRight,
                              child:Container(
                                width: 100,
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                      child:  Align(
                                      alignment: Alignment.centerRight,
                                      child:  Text(money[index], style:
                                      const TextStyle(color: Colors.black,
                                          fontSize: 15,fontWeight: FontWeight.bold),

                                      ),),),
                                    Container(
                                      width: 200,
                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child:  Align(
                                        alignment: Alignment.centerRight,
                                      child:Text(xpr[index], style:
                                      const TextStyle(color: Colors.black26,
                                          fontSize: 15),),

                                      ),),],
                                ),),

                              ),

                      ],),
    ),),
            ),),
          ],),),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              child: const Align(
                alignment: Alignment.center,
                child: Text("См. еще", style:
                TextStyle(color: Colors.black,
                    fontSize: 15,),
                ),
              ),),
          ),
            ],),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_sharp,color: Colors.black,),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.chartBar),
            label: 'Отчеты',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userAlt),
            label: 'Профиль',
          ),
        ],

      ),

    );


  }
}