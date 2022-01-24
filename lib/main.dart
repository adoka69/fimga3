import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp()));
}
class MyApp extends StatelessWidget {
  final images = [AssetImage('assets/1.PNG'),AssetImage('assets/2.PNG'),AssetImage('assets/3.PNG'),const AssetImage('assets/4.PNG'),AssetImage('assets/4.PNG'),AssetImage('assets/4.PNG'),];
  final List<String> name = <String>[
    'Bitcoin  ',
    'Ethereum',
    'Litecoin ',
    'Ripple   ',
    'Ripple   ',
    'Ripple   ',
  ];
  final List<String> percent = <String>[
    '+1.6%',
    '-0.82%',
    '-2.10%',
    '+0.27%',
    '+0.27%',
    '+0.27%',
  ];
  final List<String> money = <String>[
    '\$29,850.15',
    '\$10,531.24',
    '\$3,676.76',
    '\$5,241.62',
    '\$5,241.62',
    '\$5,241.62',
  ];
  final List<String> xpr = <String>[
    '2.73 BTC',
    '47.61 ETH',
    '39.27 LTC',
    '16447.65 XRP',
    '16447.65 XRP',
    '16447.65 XRP',
  ];


  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        children: [Container(
          padding: const EdgeInsets.fromLTRB(34, 70, 0, 0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: const Text("Портфолио", style:
                TextStyle(color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(100, 0, 10, 25),
                child: const Icon(
                  FontAwesomeIcons.cog, color: Colors.black26,
                ),
              ),
            ],),
        ),
          Container(
            padding: const EdgeInsets.fromLTRB(230, 15, 0, 0),
            child: const Text("посмотреть все", style:
            TextStyle(color: Colors.redAccent,
                fontSize: 18),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 580,
                    width: 350,
                    child:Container(
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) => Container(
                          height: 90,
                          margin: const EdgeInsets.only(top: 1.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Container(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Image(image: images[index],height: 50, width: 50, fit:BoxFit.cover)
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

                                    ),),
                                    Container(
                                      width: 150,
                                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                      child: Text(percent[index], style:
                                      const TextStyle(color: Colors.black26,
                                          fontSize: 10),

                                      ),),],
                                ),

                                ),),
                              Align(alignment: Alignment.topRight,
                              child:Container(
                                width: 100,
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                                      child:  Align(
                                      alignment: Alignment.centerRight,
                                      child:  Text(money[index], style:
                                      const TextStyle(color: Colors.black,
                                          fontSize: 18),

                                      ),),),
                                    Container(
                                      width: 185,
                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child:  Align(
                                        alignment: Alignment.centerRight,
                                      child:Text(xpr[index], style:
                                      const TextStyle(color: Colors.black26,
                                          fontSize: 10),),

                                      ),),],
                                ),),

                              ),

                      ],),
    ),),
            ),),
          ],),),
          ),
            ],),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.borderAll,color: Colors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.syncAlt),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: '',
          ),
        ],

      ),

    );


  }
}