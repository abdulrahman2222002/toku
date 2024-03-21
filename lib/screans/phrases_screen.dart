import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';
import 'package:toku_app/model/number.dart';
class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);
  final List<Number> phrases= const[
    Number(
      enName: 'Dont forget to subscribe',
      jpName: 'Kodoku suru koto o wasurenaide kudasai',
      sound: 'dont_forget_to_subscribe.wav',
    ),
    Number(
      enName: 'I love programming',
      jpName: 'Watashi wa puroguraming daisukidesu',
      sound: 'i_love_programming.wav',
    ),
    Number(
      enName: 'Programming is easy',
      jpName: 'Puroguraming wa kantandesu',
      sound: 'programming_is_easy.wav',
    ),
    Number(
      enName: 'Where are you going',
      jpName: 'Doko ni iku no',
      sound: 'where_are_you_going.wav',
    ),
    Number(
      enName: 'What is your name',
      jpName: 'Namae wa nandesu ka',
      sound: 'what_is_your_name.wav',
    ),
    Number(
      enName: 'I love anime',
      jpName: 'Watashi wa anime ga daisukidesu ',
      sound: 'i_love_anime.wav',
    ),
    Number(
      enName: 'How are you feeling',
      jpName: 'Go kibun wa ikagadesu ka',
      sound: 'how_are_you_feeling.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
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
          return PhrasesItem(
            number: phrases[index],
            color: const Color(0xffF99430),
            itemType: 'phrases',
          );
        },
        itemCount: phrases.length,

      ),
    );
  }
}
