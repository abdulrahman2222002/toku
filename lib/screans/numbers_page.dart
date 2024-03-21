// ignore_for_file: empty_constructor_bodies

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/model/number.dart';
class Numbers extends StatelessWidget {
  const Numbers({Key? key}) : super(key: key);
   final List<Number> numbers= const[
  Number(
    image: 'assets/images/numbers/number_one.png',
    enName: 'One',
    jpName: 'ichi',
    sound: 'number_one_sound.mp3',
  ),
  Number(
    image: 'assets/images/numbers/number_two.png',
    enName: 'Two',
    jpName: 'Ni',
    sound: 'number_two_sound.mp3',
  ),
  Number(
    image: 'assets/images/numbers/number_three.png',
    enName: 'Three',
    jpName: 'San',
    sound: 'number_three_sound.mp3',
  ),
    Number(
    image: 'assets/images/numbers/number_four.png',
    enName: 'Four',
    jpName: 'Shi',
    sound: 'number_four_sound.mp3',
  ),
  Number(
    image: 'assets/images/numbers/number_five.png',
    enName: 'Five',
    jpName: 'Go',
    sound: 'number_five_sound.mp3',
  ),
  Number(
    image: 'assets/images/numbers/number_six.png',
    enName: 'Six',
    jpName: 'Roku',
    sound: 'number_six_sound.mp3',
  ),
  Number(
    image: 'assets/images/numbers/number_seven.png',
    enName: 'Seven',
    jpName: 'Sebun',
    sound: 'number_seven_sound.mp3',
  ),
  Number(
    image: 'assets/images/numbers/number_eight.png',
    enName: 'Eight',
    jpName: 'Hachi',
    sound: 'number_eight_sound.mp3',
  ),
  Number(
    image: 'assets/images/numbers/number_nine.png',
    enName: 'Nine',
    jpName: 'Kyu',
    sound: 'number_nine_sound.mp3',
  ),
  Number(
    image: 'assets/images/numbers/number_ten.png',
    enName: 'Ten',
    jpName: 'Jū',
    sound: 'number_ten_sound.mp3',
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
            number: numbers[index],
            color: const Color(0xffF99430),
            itemType: 'numbers',
          );
        },
        itemCount: numbers.length,

      ),
    );
  }
}
