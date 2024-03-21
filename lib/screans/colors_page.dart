import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/model/number.dart';
class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Number> colors= const[
    Number(
      image: 'assets/images/colors/color_white.png',
      enName: 'White',
      jpName: 'Shiroi',
      sound: 'white.wav',
    ),
    Number(
      image: 'assets/images/colors/color_black.png',
      enName: 'Black',
      jpName: 'Burakku',
      sound: 'black.wav',
    ),
    Number(
      image: 'assets/images/colors/color_gray.png',
      enName: 'Gray',
      jpName: 'Gure',
      sound: 'gray.wav',
    ),
    Number(
      image: 'assets/images/colors/color_green.png',
      enName: 'Green',
      jpName: 'Midori',
      sound: 'green.wav',
    ),
    Number(
      image: 'assets/images/colors/color_brown.png',
      enName: 'Brown',
      jpName: 'Chairo',
      sound: 'brown.wav',
    ),
    Number(
      image: 'assets/images/colors/color_dusty_yellow.png',
      enName: 'Dusty Yellow',
      jpName: 'Hokori ppoi kiiro',
      sound: 'dusty yellow.wav',
    ),
    Number(
      image: 'assets/images/colors/color_red.png',
      enName: 'Red',
      jpName: 'Aka',
      sound: 'red.wav',
    ),
    Number(
      image: 'assets/images/colors/yellow.png',
      enName: 'Yellow',
      jpName: 'Kiiro',
      sound: 'yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Numbers'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed:(){
              Navigator.pop(context);
            } ,
          ),
          backgroundColor: const Color(0xff483229),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Item(
              number: colors[index],
              color: const Color(0xff7C3FA1),
              itemType: 'colors',
            );
          },
          itemCount: colors.length,

        ),
    );
  }
}
